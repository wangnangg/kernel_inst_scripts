#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/inotify.h>


int main(int argc, char **argv) 
{
	int fd;
	int wd;

	fd = inotify_init();

	if(fd < 0) 
	{
		printf("inotify_init error\n");
		exit(-1);
	}

	wd = inotify_add_watch(fd, "/home", 
				IN_MODIFY | IN_CREATE | IN_DELETE);
	if(wd < 0)
	{
		int lasterror = errno;
		if(errno == ENOSPC)
		{
			printf("The user limit on the total number of inotify watches was reached or the kernel failed to allocate a needed resource.\n");
		} else
		{
			printf("Unexpected error.\n");
		}
		exit(-1);
	}
	 

	inotify_rm_watch(fd, wd);
	close(fd);
	printf("Succeeded.\n");
	exit(0);
}

