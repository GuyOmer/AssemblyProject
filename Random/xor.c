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

int main(void)

{

    int rnd = 0;

    int res[] = {0, 0, 0, 0};

    int seeds[] = {0, 0, 0, 0};

    int hits = 0;

    

    int limits[] = {205,200,200,200};

    long long TESTS = 9000000000000000000;

    

    srand(time(NULL));

    

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


        for (int j = 0; j < 1000; j++)

        {

            rnd = RGen();

            res[rnd % 4]++;

        }

        if (res[0] >= limits[0] && res[1] >= limits[01] && res[2] >= limits[2] && res[3] >= limits[3])

        {

            printf("For seeds: %d %d %d %d.\nresults are: %d %d %d %d.\n--------------\n", seeds[0], seeds[1], seeds[2], seeds[3], res[0], res[1], res[2], res[3]);

            hits++;

        }

        res[0] = 0;

        res[1] = 0;

        res[2] = 0;

        res[3] = 0;

        /**if (hits == 0 && i == (TESTS-1))

            {

            i=0;

            limits[0]--;

            }**/


    }

    printf("\nDONE\n%d Hits!\n", hits);

    return 0;

}
