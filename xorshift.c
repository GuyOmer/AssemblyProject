# include <stdint.h>
# include <stdio.h>
int main(void)
{
uint16_t x = 5, y = 256, z = 6552, w = 15;
 
uint16_t RGen(void) {
    uint16_t t;
 
    t = x ^ (x << 11);
    x = y; y = z; z = w;
    return w = w ^ (w >> 19) ^ t ^ (t >> 8);
}
    
    int res[] = {0,0,0,0};
    int i, s;
 for(i= 0; i< 100; i++)
 {
    s = RGen();
    printf("%d --> %d\n", s,s%4);
    res[s%4]++;
 }
 for (i = 0; i < 4; i++)
    printf("%d, ", res[i]);
    return 0;
}