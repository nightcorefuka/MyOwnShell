CC = gcc
CFLAGS = -std=c11 -D_POSIX_C_SOURCE=200809L -Wall -Wextra -Werror -pedantic -g -fsanitize=address,undefined

all: shell

shell: main.c
	$(CC) $(CFLAGS) -o shell main.c

clean:
	rm -f shell