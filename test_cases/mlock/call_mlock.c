#include<sys/mman.h>

int tmp;
int main()
{
	mlock(&tmp, sizeof(tmp));
	return  0;
}