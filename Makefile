CC = gcc
CFLAGS = -Wall -Wextra -O2 -g
SRC = server.c
TARGET = server

all: $(TARGET)
$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) *.o

.PHONY: all run clean server build-and-run
