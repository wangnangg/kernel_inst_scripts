#! /usr/bin/python
import os
import sys

def run_async(cmd, args):
        pid = os.fork();
        if pid == 0:
                #we are in child
                cmdall = [];
                cmdall.append(cmd + ' ');
                cmdall.extend([x+' ' for x in args]);
                os.system(''.join(cmdall));
                sys.exit(0);
        else:
                #we are in parent:
                return pid;

def usage():
        print '''run a program in parallel infinitely.
run_parallel.py parallel_count program [program args...]''';

def main(argv):
        if len(argv) < 2:
                usage();
                sys.exit(-1);
        count = int(argv[0]);
        cmd = argv[1];
        cmd_args = argv[2:];
        cmd_args.append('0');

        pids = [];
        for i in range(0, count):
                cmd_args[-1] = str(i);
                pids.append(run_async(cmd, cmd_args));        
        
        os.wait();
        


if __name__ == '__main__':
        main(sys.argv[1:]);
