#define _GNU_SOURCE
#include <sys/syscall.h>

#define SYS_spinlock_deadlock 299
int main(int argc, char *argv[])
{
	syscall(SYS_spinlock_deadlock);
}
