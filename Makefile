# The compiler: gcc for C programs
CC = gcc

# Compiler flags:
CFLAGS += -Wall -Wextra -g3 -Werror

CFLAGS_MEM = ${CFLAGS} -fsanitize=address

# headers file
HEADER = include/my_ngram.h

# All the .o files we need for our executable.
OBJECT_FILES = obj/my_ngram.o

NAME = my_ngram

all: my_ngram

${NAME}: ${OBJECT_FILES}
	${CC} -o $@ $^ ${CFLAGS}

# This generates all the object files. You must have a c file and a header file
obj/%.o: src/%.c include/%.h
	${CC} ${CFLAGS} -c $< -o $@

clean:
	$(RM) obj/* ./${NAME} core.* 

re: clean ${NAME}

