/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file Stats 
 * @brief Coursera Intro to Embedded systems week1 assignment 1
 *
 * Functions to find the median, mean, min, max, of an array. And sort
 * the array.  Also functions to print the array and statistics.
 *
 * @author Alexander Toy
 * @date 07/03/2021
 *
 */



#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include "stats.h"
//#include "platform.h"
#include "memory.h"


/* Size of the Data Set */
#define SIZE (39)

void main() {
  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,};//  90};
  unsigned char test2[SIZE];
  uint8_t tester;
  uint8_t  tester2[10];
  int32_t i = -1234;
	int32_t j;
  tester = my_itoa(i,tester2,16);
  for (int i=0; i<tester; i++){
	  printf("%c",tester2[i]);
  }
	printf("\n");
	j = my_atoi(tester2,tester,16);
	printf("%d",j);
	//printf("%d",tester);
  //print_array(test,SIZE);
  //tester = my_memmove(test,test2,39);
  //print_array(tester,SIZE);
  //tester2 = my_reverse(tester,39);
  //print_array(tester2,SIZE);
  
  //tester = my_memmove(test,&test[20],20);
  //printf("%p\n",&test[20]);
  //printf("%p\n",test+20);
  //print_array(tester,SIZE);
  //print_array(test,SIZE);
  //tester2 = my_memset(tester,40,80);
  //print_array(tester2,SIZE);
  //tester = my_memzero(tester2,40);
  //print_array(tester,SIZE);
  //tester2 = my_memset(tester,40,1);
  //print_array(tester,Sint32_t i = 1234;IZE);
  //print_array(test2,SIZE);
  //print_array(test,SIZE);
  //sort_array(test,SIZE);
  //printf("Sorted Array: ");
  //print_array(test,SIZE);
  //print_statistics(test,SIZE);
  //sort_array(test,SIZE);

}
uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base){
	int sign;
	size_t i;
	if ((sign = data) < 0){
		data = -data;
	}
	i = 0;
	do{
		*ptr = data % base + '0';
		ptr++;
		i++;
	}while ((data/=base)>0);
	
	if (sign<0){
		*ptr='-';
		ptr++;
		i++;
	}
	*ptr = '\0';
	ptr-=i;
	
	ptr = my_reverse(ptr,i);
	return (int8_t) i;
}

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base){
	int32_t sum=0;
	ptr = my_reverse(ptr,digits);
	
	for (int i = 0; i<digits; i++){
		if (*ptr=='-'){
			sum = 0-sum;
		}
		else{
			int sig_dig = 1;
			for (int j=0; j<i; j++){
				sig_dig*=base;
			}
			sum+=(*ptr-'0') * (sig_dig);
		}
		ptr++;
	}
	return sum;
}

void print_statistics(unsigned char array[], unsigned int length){
  printf("Array Statistics:\n");
  printf("Median:%d\n",find_median(array,length));
  printf("Mean:%d\n",find_mean(array,length));
  printf("Maximum:%d\n",find_maximum(array,length));
  printf("Minimum:%d\n",find_minimum(array,length));
}


void print_array(unsigned char array[], unsigned int length){
  #ifdef VERBOSE
  printf("[");
  for (int i=0; i<length; i++){
    if (i+1 == length){
      printf("%d",array[i]);
    }
    else{
      printf("%d,",array[i]);
    }
  }
  printf("]\n\n");
  #endif
}

unsigned char find_median(unsigned char array[], unsigned int length){
  sort_array(array,length);
  return array[length/2];
}

unsigned char find_mean(unsigned char array[], unsigned int length){
  int sum=0;
  for (int i=0; i<length; i++){
    sum+=array[i];
  }
  return sum/length;
}

unsigned char find_maximum(unsigned char array[], unsigned int length){
  int max=0;
  for (int i=0; i<length; i++){
    if (array[i]>max){
      max = array[i];
    }
  }
  return max;
}

unsigned char find_minimum(unsigned char array[], unsigned int length){
  int min = array[0];
  for (int i=0; i<length; i++){
    if (array[i]<min){
      min = array[i];
    }
  }
  return min;
}

void sort_array(unsigned char *array, unsigned int length){
  //bubble sort

  unsigned char *start = array;
  int num_swaps=1;
  while (num_swaps !=0){
    num_swaps=0;
    for (int i=0; i<length-1; i++){
      unsigned char temp = *(array+1);
      if (*array > temp){
        *(array+1) = *array;
        *array = temp;
        array++;
        num_swaps++;
      }
      else{
        array++;
      }
    }
    array = start;
  }
}






