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
 * @intger to ascii string and back again
 *
 * 
 *
 * @author Alexander Toy
* @date 07/15/2021
 *
 */
#ifndef __DATA_H__
#define __DATA_H__

/**
 * @brief convert data from a standard integer type into an ASCII string.
 *
 * converts integar to ascii string with base
 *
 * @param signed 32-bit integer
 * @param uint8_t * ptr
 * @param uint32_t base
 *
 * @return uint8_t
 */

uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);

/**
 * @brief pretty prints an array
 *
 * convert data back from an ASCII represented string into an integer type.
 *
 * @param unsigned char *array
 * @param unsigned int
 * @param uint32_t base
 
 * @return uint32_t
 */

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);

#endif




