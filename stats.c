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
 * @file <Add File Name> 
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author <Add FirsName LastName>
 * @date <Add date >
 *
 */



#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

void main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  print_array(test,SIZE);
  sort_array(test,SIZE);
  printf("Sorted Array: ");
  print_array(test,SIZE);
  print_statistics(test,SIZE);
  //sort_array(test,SIZE);

}


void print_statistics(unsigned char array[], unsigned int length){
  printf("Array Statistics:\n");
  printf("Median:%d\n",find_median(array,length));
  printf("Mean:%d\n",find_mean(array,length));
  printf("Maximum:%d\n",find_maximum(array,length));
  printf("Minimum:%d\n",find_minimum(array,length));
}


void print_array(unsigned char array[], unsigned int length){
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





