import boolean
import re



def decl2lp(decl_model):
    acts = []#set() #set of activities
    attribs = set() #set of attributes (superfluo, ogni attributo è associato a qualche attività)
    act_to_attrib = {} #nota che attività senza attributi sono presenti solo in acts e non qui
    attrib_to_val = {} #i possibili valori sono descritti in maniera intensiva (i.e. a parole)
    constraints =[] #set() #

    with open(decl_model) as file:
        for line in file:
            if line != '\n':
                line = line.strip('\n')
                if line[:8]=='activity':
                    activity = line[9:]
                    acts.append(activity.lower())
                elif line[:4]=='bind':
                    index = line.index(':')
                    activity = line[5:index]
                    attibute_list = line[index+2:].split(', ') 
                    attibute_list = [attrib.lower() for attrib in attibute_list]
                    act_to_attrib[activity.lower()] = attibute_list
                    for attrib in attibute_list:
                        attribs.add(attrib)
                elif ':' in line:
                    index = line.index(':')
                    attrib = line[:index]
                    val_description = line[index+2:]
                    if val_description[:15] == 'integer between':
                        type_attrib = 'Integer'
                        val_description = val_description.split(' ')
                        min_value = val_description[2]
                        max_value = val_description[4]
                        values = (type_attrib, (min_value,max_value) )
                    else:
                        type_attrib = 'Enumeration'
                        values = val_description.split(', ')
                        values = [val.lower() for val in values]
                        values = (type_attrib,values)
                    attrib_to_val[attrib] = values
                else:
                    mp_constraint = []
                    line = line.split(' |')
                    constraint = line[0]
                    template = constraint[:constraint.index('[')]
                    mp_constraint.append(template)
                    activities = constraint[constraint.index('[')+1:constraint.index(']')].split(', ') 
                    if len(activities)==1:
                        activation_cond = line[1]
                        mp_constraint.append( (activities[0],activation_cond) )
                    elif len(activities)==2:
                        activation_cond = line[1] #NOTAAAA: qui assumiamo che la signature è del tipo Template[A,B]
                        mp_constraint.append( (activities[0],activation_cond) )
                        correlation_cond = line[2] #Se la signature fosse di tipo Template[B,A] bisognerebbe invertire le due condizioni
                        mp_constraint.append( (activities[1],correlation_cond) )
                    constraints.append(tuple(mp_constraint))


    def parsed_condition(condition,string):
        string = re.sub('\)',' ) ',string)
        string = re.sub('\(',' ( ',string)
        string = string.strip()
        string = re.sub(' +', ' ', string)
        string = re.sub('is not','is_not',string)
        string = re.sub('not in', 'not_in',string)
        string = re.sub(' *> *', '>', string)
        string = re.sub(' *< *', '<', string)
        string = re.sub(' *= *', '=', string)
        string = re.sub(' *<= *', '<=', string)
        string = re.sub(' *>= *', '>=', string)
        form_list = string.split(" ")

        for i in range(len(form_list)-1,-1,-1):
            el = form_list[i]
            if el == 'in' or el == 'not_in':
                end_index = form_list[i:].index(')')
                start_index = i-1
                end_index = end_index+i+1
                form_list[start_index:end_index] = [' '.join(form_list[start_index:end_index])] 
            elif el == 'is' or el == 'is_not':
                start_index = i-1
                end_index = i+2
                form_list[start_index:end_index] = [' '.join(form_list[start_index:end_index])] 

        for i in range(len(form_list)):
            el = form_list[i]
            if '(' in el and ')' in el:
                el = re.sub('\( ','(',el)
                el = re.sub(', ',',',el)
                el = re.sub(' \)',')',el)
                form_list[i] = el

        keywords = {'and','or','(',')'}
        c = 0
        name_to_cond = dict()
        cond_to_name = dict()
        for el in form_list:
            if el not in keywords:
                c = c+1
                name_to_cond[condition+'_condition_'+str(c)] = el
                cond_to_name[el] = condition+'_condition_'+str(c)
        form_string = ''
        for el in form_list:
            if el in cond_to_name:
                form_string = form_string+cond_to_name[el]+' '
            else:
                form_string = form_string+el+' '

        algebra = boolean.BooleanAlgebra()
        expression = algebra.parse(form_string, simplify=True)
        return expression,name_to_cond,cond_to_name

    def tree_conditions_to_asp(condition,expression,condition_name,i,file,conditions):    
        def expression_to_name(expression):
            if expression.isliteral:
                condition_name = str(expression)
            else:
                condition_name = condition+'_condition_'+''.join([str(symbol).split('_')[2] for symbol in expression.get_symbols()])
                while condition_name in conditions:
                    condition_name = condition_name+'_'
                conditions.add(condition_name)
            return condition_name+'({},T)'.format(i)
        def no_params(arg_name):
            return arg_name.split('(')[0]

        if expression.isliteral:
            return
        condition_name = condition_name+'({},T)'.format(i)
        formula_type = expression.operator
        formula_args = expression.args
        if formula_type == '|':
            for arg in formula_args:
                arg_name = expression_to_name(arg)
                file.write('{} :- {}.\n'.format(condition_name,arg_name))
                tree_conditions_to_asp(condition,arg,no_params(arg_name),i,file,conditions)
        if formula_type == '&':
            args_name = ''
            for arg in formula_args:
                arg_name = expression_to_name(arg)
                #tree_conditions_to_asp(arg,arg_name,file,conditions) depth-first
                args_nameDECL2ASP = args_name+arg_name+','
            args_name =args_name[:-1] #remove last comma
            file.write('{} :- {}.\n'.format(condition_name,args_name))
            for arg in formula_args: #breadth-first (è più costoso della depth ma è più elegante, è la stessa della disgiunzione)
                arg_name = expression_to_name(arg)
                tree_conditions_to_asp(condition,arg,no_params(arg_name),i,file,conditions)

    def condition_to_asp(name,cond,i,file):
        name = name+'({},T)'.format(i)
        for attrib in attrib_to_val:
            if attrib in cond:
                attrib_type = attrib_to_val[attrib][0]
                break
        if attrib_type =='Enumeration':
            cond_type = cond.split(' ')[1]
            if cond_type == 'is':
                value = cond.split(' ')[2]
                asp_cond = 'assigned_value({},{},T)'.format(attrib,value)
                file.write('{} :- {}.\n'.format(name,asp_cond))
            elif cond_type == 'is_not':
                value = cond.split(' ')[2]
                asp_cond = 'time(T),not assigned_value({},{},T)'.format(attrib,value)
                file.write('{} :- {}.\n'.format(name,asp_cond))
            elif cond_type == 'in':
                for value in cond.split(' ')[2][1:-1].split(','):
                    asp_cond = 'assigned_value({},{},T)'.format(attrib,value)  
                    file.write('{} :- {}.\n'.format(name,asp_cond))
            else:
                asp_cond = 'time(T),'
                for value in cond.split(' ')[2][1:-1].split(','):
                    asp_cond = asp_cond+'not assigned_value({},{},T),'.format(attrib,value)
                asp_cond = asp_cond[:-1]
                file.write('{} :- {}.\n'.format(name,asp_cond))
        if attrib_type =='Integer':
            relations = ['<=','>=','=','<','>']
            for rel in relations:
                if rel in cond:
                    value = cond.split(rel)[1]
                    file.write('{} :- assigned_value({},V,T),V{}{}.\n'.format(name,attrib,rel,value))
                    break

    #print(decl_model[:-5]+'.lp')
    f = open(decl_model[:-5]+'.lp','w')
    
    for activity in acts:
        f.write('activity("{}").\n'.format(activity))
        if activity in act_to_attrib:
            for attrib in act_to_attrib[activity]:
                attrib = attrib
                f.write('has_attribute({},{}).\n'.format(activity,attrib))
        f.write('\n')

    for attrib in attribs:
        type_attrib, values = attrib_to_val[attrib]
        if type_attrib == 'Integer':
            min_val, max_val = values
            f.write('value({},{}..{}).\n'.format(attrib,min_val,max_val))
        else: 
            for value in values:
                f.write('value({},{}).\n'.format(attrib,value))
        f.write('\n')

    for i,constraint in enumerate(constraints):
        #Template
        name = constraint[0]
        f.write('template({},"{}").\n'.format(i,name))
        #Activation
        activation = constraint[1][0].lower()
        f.write('activation({},"{}").\n'.format(i,activation))
        '''
        #Activation Condition
        activation_condition = constraint[1][1]
        expression,name_to_cond,cond_to_name = parsed_condition('activation',activation_condition)
        if expression.isliteral:
            f.write('activation_condition({},T):- {}({},T).\n'.format(i,str(expression),i))
        else:
            conditions=set(name_to_cond.keys())
            tree_conditions_to_asp('activation',expression,'activation_condition',i,f,conditions)
        for name,cond in name_to_cond.items():
            condition_to_asp(name,cond,i,f)
        '''    
        #Target and Correlation Condition
        if len(constraint)==3:
            target = constraint[2][0].lower()
            f.write('target({},"{}").\n'.format(i,target))
            '''
            correlation_condition = constraint[2][1]
            expression,name_to_cond,cond_to_name = parsed_condition('correlation',correlation_condition)
            if expression.isliteral:
                f.write('correlation_condition({},T):- {}({},T).\n'.format(i,str(expression),i))
            else:
                conditions=set(name_to_cond.keys())
                tree_conditions_to_asp('correlation',expression,'correlation_condition',i,f,conditions)
            for name,cond in name_to_cond.items():
                condition_to_asp(name,cond,i,f)
            '''    
        f.write('\n')


    f.close()
