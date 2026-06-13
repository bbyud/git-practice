#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "binary.h"

int main(int argc, char *argv[]) {
    int opt;
    int xflag = 0, oflag = 0, bflag = 0;

    // getopt로 옵션 파싱
    while ((opt = getopt(argc, argv, "xob")) != -1) {
        switch (opt) {
            case 'x': xflag = 1; break;
            case 'o': oflag = 1; break;
            case 'b': bflag = 1; break;
            default:
                fprintf(stderr, "Usage: %s [-x] [-o] [-b] num...\n", argv[0]);
                exit(1);
        }
    }

    // 나머지 인수(숫자들) 처리
    for (int i = optind; i < argc; i++) {
        int num = atoi(argv[i]);
        printf("%d: ", num);

        if (xflag) printf("hex=%X  ", num);
        if (oflag) printf("oct=%o  ", num);
        if (bflag) { printf("bin="); binary(num); printf("  "); }

        printf("\n");
    }

    return 0;

}
