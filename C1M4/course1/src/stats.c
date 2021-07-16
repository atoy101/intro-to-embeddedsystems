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


#include <stdint.h>
#include <stdio.h>
#include "stats.h"
#include "data.h"

/* Size of the Data Set */
#define SIZE (40)



void print_statistics(unsigned char array[], unsigned int length){
  PRINTF("Array Statistics:\n");
  PRINTF("Median:%d\n",find_median(array,length));
  PRINTF("Mean:%d\n",find_mean(array,length));
  PRINTF("Maximum:%d\n",find_maximum(array,length));
  PRINTF("Minimum:%d\n",find_minimum(array,length));
}


void print_array(unsigned char array[], unsigned int length){
  #ifdef VERBOSE
  PRINTF("[");
  for (int i=0; i<length; i++){
    if (i+1 == length){
      PRINTF("%d",array[i]);
    }
    else{
      PRINTF("%d,",array[i]);
    }
  }
  PRINTF("]\n\n");
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





