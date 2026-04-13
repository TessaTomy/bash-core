#include<stdio.h>
#include<pthread.h>

int turn=0,flag[2]={0,0};

void *run(void *arg)
{
    int i=(int)(long)arg;
    int j=1-i;
    for(int k=0;k<3;k++)
    {
        flag[i]=1;
        turn=j;
        while(flag[j]&&turn==j);
        printf("%d in CS !!\n",i);
        flag[i]=0;
    }
}

void main()
{
    pthread_t t1,t2;
    pthread_create(&t1,0,run,(void *) 0);
    pthread_create(&t2,0,run,(void *) 1);
    pthread_join(t1,0);
    pthread_join(t2,0);
}
