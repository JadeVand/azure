DELETE = rm
CC=gcc
CFLAGS = -Iinclude -Wall -Werror
LDFLAGS = -Llib -ladd
OBJFILES = main.o player.o
TARGET = project
all : $(TARGET)

$(TARGET) : $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

clean:
	rm -f $(OBJFILES) $(TARGET) *~