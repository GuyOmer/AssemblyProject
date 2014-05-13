#include <stdint.h>
#include <stdio.h>
#include <stdbool.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>

//uint16_t x = 568, y = 264, z = 3, w = 1533;

//#define TESTS 900000000000000000000

uint16_t x = 0, y = 0, z = 0, w = 0;

uint16_t RGen(void)
{
    uint16_t t;
    t = x ^ (x << 11);
    x = y;
    y = z;
    z = w;

    return w = w ^ (w >> 19) ^ t ^ (t >> 8);

}

int main(int argc, char* argv[])

{

    int rnd = 0;

    int res[] = {0, 0, 0, 0};

    int seeds[] = {0, 0, 0, 0};

    int hits = 0;

    bool flag;

    int limits[] = {210,200,200,200};

    long long TESTS = 1000000000;

    uint16_t clicks = 0;

    srand(time(NULL));

    if(argc == 2) TESTS = atoi(argv[1]);
    

    for (long long i = 0; i < TESTS; i++)

    {

        // res[] = {0,0,0,0};

        x = floor(rand() * (65535));
        y = floor(rand() * (65535));
        z = floor(rand() * (65535));
        w = floor(rand() * (65535));

        seeds[0] = x;
        seeds[1] = y;
        seeds[2] = z;
        seeds[3] = w;
        
        flag = false;
        
            //Math.floor(Math.random()*(UpperRange-LowerRange+1))+LowerRange; 

        for (int j = 0; j < 1000; j++)
        {
            rnd = RGen();
            res[rnd % 4]++;
            
            clicks = (uint16_t)time(NULL);
            if (clicks%7 == 0 ) x = x >> (clicks%10); flag = true;
            
        }

        if (res[0] >= limits[0] && res[1] >= limits[01] && res[2] >= limits[2] && res[3] >= limits[3] && flag)

        {
            printf("For seeds: %d,%d,%d,%d.\nResults are: %d %d %d %d.\n--------------\n", seeds[0], seeds[1], seeds[2], seeds[3], res[0], res[1], res[2], res[3]);
            hits++;
        }

        res[0] = 0;
        res[1] = 0;
        res[2] = 0;
        res[3] = 0;
        if (hits == 0 && i == (TESTS-1))

        {
            i=0;
            limits[0]--;
        }
        if (res[0] == 204) break;

    }

    printf("\nDONE\n%d Hits!\n", hits);

    return 0;

}
