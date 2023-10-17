# The compiler: gcc for C programs
CC = gcc

# Compiler flags:
CFLAGS += -Wall -Wextra -g3 -Werror
CFLAGS_MEM = ${CFLAGS} -fsanitize=address

# headers file
HEADER =

# All the .o files we need for our executable.
OBJECT_FILES = 

NAME = my_ngram

all: my_ngram

${NAME}: ${OBJECT_FILES}
	${CC} -o $@ $^ ${CFLAGS}


# A "phony" target to remove built files and backups
obj/%.o: src/%.c include/%.h
	${CC} ${CFLAGS} -c $< -o $@

clean:
	$(RM) obj/* ./my_bc core.* 

re: clean ${NAME}