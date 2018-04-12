ELF = bin/main.elf

INC+= -I.
INC+= -I /opt/X11/include/

CC = g++
LD = g++
OBJCOPY = objcopy
OBJDUMP = objdump
SIZE = size

# DEGUBFLAGS = -g -pg

LD_LIBS+= -L/opt/X11/lib
LD_LIBS+= -ljsoncpp -lglut -lGL -lGLU -lX11


CFLAGS = $(DEGUBFLAGS) -O2 -Os -s -Wall -Wextra -pedantic -std=c++11 $(INC)
LDFLAGS = $(DEGUBFLAGS) -v -std=c++11 -lm -lpthread -pthread  $(LD_LIBS)

SRCS = $(shell find . -name '*.cpp')


OBJS = $(SRCS:.cpp=.o)

all: $(ELF)
	$(SIZE) $(ELF)

$(ELF): $(LIBS) $(OBJS)
	$(LD) -o $@ $(OBJS) $(LIBS) $(LDFLAGS)

%.o: %.cpp
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm $(OBJS) -rf
	rm $(ELF) -rf
