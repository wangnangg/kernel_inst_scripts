#define _GNU_SOURCE
#include <unistd.h>
#include <sys/syscall.h>
#include <sys/types.h>

#define SYS_spinlock_deadlock 337
int main(int argc, char *argv[])
{
	syscall(SYS_spinlock_deadlock);
}
