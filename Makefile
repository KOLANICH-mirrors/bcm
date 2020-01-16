TARGET = bcm

CC = gcc
CFLAGS = -Wall
CXX = g++
CXXFLAGS = -Wall

RM = rm -f

SRCS= src
divsufsort_SRCS = $(SRCS)/divsufsort.c
divsufsort_OBJS = $(SRCS)/divsufsort.o
bcm_SRCS = $(SRCS)/bcm.cpp

all: $(TARGET)

$(TARGET): $(bcm_SRCS) $(divsufsort_OBJS)
	$(CXX) $(CXXFLAGS) $^ -o $@ -s

clean:
	$(RM) $(SRCS)/*.o $(TARGET)
