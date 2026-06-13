#include <stdio.h>
#include <limits.h>
#include "binary.h"

void binary(int value){
	int size = sizeof(value)*CHAR_BIT;
	for(int i=size-1; i>=0; i--){
	printf("%d", (value>>i)&1);
	if(i%4==0 && i!=0){
	printf(" ");}

	}
}
