#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# makefile for the cortex-M0+ build system and linux
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <FILE>.o - Builds <FILE>.o object file
#      <FILE>.i - Builds <FILE>.i preprocessed file
#	   <FILE>.asm - Builds <FILE>.asm assembly file
#      build - Builds and links all source files
#      compile-all - builds but does not link all source files
#      clean - removes all generated files
#      
#
# Platform Overrides:
#      PLATFORM = MSP432
#	   PLATFORM = HOST
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = MSP432

# Architectures Specific Flags
LINKER_FILE = ../msp432p401r.lds
CPU = cortex-m4
ARCH = thumb
SPECS = nosys.specs
MFPU = fpv4-sp-d16
FLOAT = hard
MARCH = armv7e-m
TARGET = c1m2


# Compiler Flags and Defines
ifeq ($(PLATFORM),MSP432)
	OBJS = $(SOURCES_MSP:.c=.o)
	IMPS = $(SOURCES_MSP:.c=.i)
	ASMS = $(SOURCES_MSP:.c=.asm)
	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	CPP = arm-none-eabi-cpp
	OBJDUMP = arm-none-eabi-objdump
	CFLAGS = -Wall -Werror -g -O0 -std=c99 -DMSP432 $(INCLUDES_MSP) -mcpu=$(CPU) -m$(ARCH) -march=$(MARCH) -mfloat-abi=$(FLOAT) -mfpu=$(MFPU) --specs=$(SPECS)
	LDFLAGS = -Wl,-Map=$(TARGET).map -T $(LINKER_FILE) 
	CPPFLAGS = -E $(INCLUDES_MSP) -DMSP432
	SIZE = arm-none-eabi-size
else
	OBJS = $(SOURCES:.c=.o)
	IMPS = $(SOURCES:.c=.i)
	ASMS = $(SOURCES:.c=.asm)
	CPP = cpp
	CC = gcc
	LD = ld
	OBJDUMP = objdump
	CFLAGS = -Wall -Werror -g -O0 $(INCLUDES) -std=c99 -DHOST
	CPPFLAGS = -E $(INCLUDES) -DHOST$(CC) $(OBJS) $(CFLAGS) -o $@
	SIZE = size
endif

CPPFLAGs = -E
	

%.i : %.c
	$(CPP) $< $(CPPFLAGS) $@
	
%.asm : %.o
	$(OBJDUMP) $< -S > $@
	
%.o : %.c
	$(CC) -c $< $(CFLAGS) -o $@
	
.PHONY: compile-all
compile-all:
	make $(OBJS)
	
.PHONY: build
build: $(TARGET).out
	
$(TARGET).out: $(OBJS)
	$(CC) $(OBJS) $(CFLAGS) $(LDFLAGS) -o $@
	$(SIZE) $@
	
.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET).out $(TARGET).map $(IMPS) $(ASMS)
	
