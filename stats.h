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
 * @brief performs statistical analytics on a dataset
 *
 * Statistical analytics include maximum, minimum,mean and median.  
 *
 * @author Alexander Toy
/* @date 07/03/2021
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/**
 * @brief prints the statistics of an array
 *
 * given an array of unsigned char data items prints the minimum, maximum, mean, and median to stdout
 *
 * @param unsigned char *array
 *
 * @return none
 */

void print_statistics(unsigned char *array);

/**
 * @brief pretty prints an array
 *
 * given an array of unsigned char data items and an int length, prints the array to stdout
 *
 * @param unsigned char *array
 * @param unsigned int
 *
 * @return none
 */

void print_array(unsigned char *array, unsigned int length);


/**
 * @brief find the median of an array of data
 *
 * given an array of unsigned char data items and an int length, calculates the median
 *
 * @param unsigned char *array
 * @param unsigned int
 *
 * @return median value unsigned char
 */

unsigned char find_median(unsigned char *array, unsigned int length);

/**
 * @brief find the mean of an array of data
 *
 * given an array of unsigned char data items and an int length, calculates the mean
 *
 * @param unsigned char *array
 * @param unsigned int
 *
 * @return mean value unsigned char
 */

unsigned char find_mean(unsigned char *array, unsigned int length);

/**
 * @brief find the maximum value of an array of data
 *
 * given an array of unsigned char data items and an int length, returns the maximum value
 *
 * @param unsigned char *array
 * @param unsigned int
 *
 * @return maximum value unsigned char
 */

unsigned char find_maximum(unsigned char *array, unsigned int length);

/**
 * @brief find the minimum value of an array of data
 *
 * given an array of unsigned char data items and an int length, returns the minimum value
 *
 * @param unsigned char *array
 * @param unsigned int
 *
 * @return minimum value unsigned char
 */

unsigned char find_minimum(unsigned char *array, unsigned int length);

/**
 * @brief sorts an array of data
 *
 * given an array of unsigned char data items and an int length, sorts from largest to smallest
 *
 * @param unsigned char *array
 * @param unsigned int
 *
 * @return return sorted array unsigned char *array
 */

unsigned char sort_array(unsigned char *array, unsigned int length);

#endif /* __STATS_H__ */
