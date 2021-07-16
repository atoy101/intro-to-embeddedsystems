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
 * @file data
 * @brief Coursera Intro to Embedded systems week4 assignment 4
 *
 * Functions to find the median, mean, min, max, of an array. And sort
 * the array.  Also functions to print the array and statistics.
 *
 * @author Alexander Toy
 * @date 07/15/2021
 *
 */


#include <stdint.h>
#include <stdio.h>
#include "data.h"
#include "memory.h"


//K&R function with added base functionality
//will fail -2^31
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



