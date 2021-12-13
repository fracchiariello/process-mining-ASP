import csv
import os
import pm4py


def xes2asp(log_file):
    log = pm4py.read_xes(log_file)
    nb_traces = len(log)
    f = open(log_file[:-3]+'asp','w')
    for i in range(nb_traces):
        trace = log[i]
        for j in range(len(trace)):
            event = trace[j]
            pos = j+1
            f.write('trace({},"{}",{}).\n'.format(i,event['concept:name'].lower(),pos))  
            #f.write('assigned_value({},categorical,{},{}).\n'.format(i,event['categorical'],pos)) #TODO: generalize such that you don't need to specify the attributes
            #f.write('assigned_value({},integer,{},{}).\n'.format(i,event['integer'],pos))
        f.write('\n')
    f.close() 
