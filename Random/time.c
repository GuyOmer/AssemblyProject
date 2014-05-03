#include <stdio.h>
#include <time.h>

int main (void)
{
time_t now = time(NULL);
printf("Time since epoch is:\nIn seconds: %d\n Minutes: %d\n Hours: %d\n Days: %d\n Weeks: %d\n Monthes: %d\n Years: %d\n",(int)now,(int)now/60,(int)now/360,(int)now/(360*24),(int)now/(360*24*7),(int)now/(360*24*7*30),(int)now/(360*24*7*30*12));
  
  return 0;
}