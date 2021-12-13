def lp2xes(file_txt):
    log_file_in = open(file_txt,'r')
    log_file_out = open(file_txt[:-3]+'xes','w')

    log_file_out.write('<?xml version="1.0" encoding="UTF-8" ?>\n')
    log_file_out.write('<log xes.version="1.0" xes.features="nested-attributes" openxes.version="1.0RC7" xmlns="http://www.xes-standard.org/">\n')
    flag = False
    for line in log_file_in:   
        if 'Number' in line:
            number = line.split()[1]
            log_file_out.write('\t<trace>\n')
            log_file_out.write('\t\t<string key="concept:name" value="Case No. {}"/>\n'.format(number))
        if flag == True and not 'assigned_value' in line:
            flag = False
            log_file_out.write('\t\t</event>\n')     
        if 'trace' in line:
            flag = True #for closing the event
            activity = line[6:line.find(',',6)]
            log_file_out.write('\t\t<event>\n')
            log_file_out.write('\t\t\t<string key="concept:name" value="{}"/>\n'.format(activity))
            #log_file_out.write('\t\t\t<string key="lifecycle:transition" value="complete"/>\n')
            #timestamp = #e.g. 2021-07-01T17:18:01.047+02:00  
            #log_file_out.write('\t\t\t<date key="time:timestamp" value="{}"/>\n'.format(timestamp))  
        elif 'assigned_value' in line:
            attrib,val,_ = line[15:-1].split(',')
            log_file_out.write('\t\t\t<string key="{}" value="{}"/>\n'.format(attrib,val))
        elif line=='\n':
            log_file_out.write('\t</trace>\n')
    log_file_out.write('</log>\n')

    log_file_in.close()
    log_file_out.close()
