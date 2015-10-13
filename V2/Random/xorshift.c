# include <stdint.h>
# include <stdio.h>


uint16_t x = 5, y = 256, z = 6552, w = 15;
 
uint16_t RGen(void)
{
    uint16_t t;
 
    t = x ^ (x << 11);
    x = y; y = z; z = w;
    return w = w ^ (w >> 19) ^ t ^ (t >> 8);
}
    
 
int main(void)
{
    int s = RGen();
    printf("%d --> %d\n", s,s%4);
    
    return 0;
}
