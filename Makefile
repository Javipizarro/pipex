# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpizarro <jpizarro@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/19 11:24:00 by jpizarro          #+#    #+#              #
#    Updated: 2022/02/25 07:16:18 by jpizarro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all clean debug fclean re run show

NAME = pipex

SRCS =	$(wildcard srcs/*.c)

OBJS = $(SRCS:.c=.o)

LIBS = libft/libft.h

STATICS = $(LIBS:.h=.a)

CC = gcc

RM = rm -f

CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJS) $(STATICS)
	@echo "Creating $@"
	$(CC) $(CFLAGS) $(OBJS) $(STATICS) -o $@
	@echo "$@ is ready!"

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(STATICS):
	cd libft/ && $(MAKE)

clean:
	@echo "Cleaing up binary files"
	$(RM) $(OBJS) *.out
	cd libft/ && $(MAKE) $@

fclean: clean
	@echo "also $(NAME), debug and .bmp files"
	$(RM) $(NAME) debug
	$(RM) $(wildcard *.bmp)
	cd libft/ && $(MAKE) $@

re: fclean all

run: all
	./$(NAME) map.cub

bmp: all
	./$(NAME) map.cub --save

debug: fclean $(OBJS) $(STATICS)
	@echo "Creating $@ file"
	$(CC) -g $(OBJS) $(STATICS) -o $@
	@echo "$@ is ready!"

show:
	@echo "SRCS $(SRCS)"
	@echo "OBJS $(OBJS)"
	@echo "MAKES $(MAKES)"
	@echo "LIBFOLDERS $(LIBFOLDERS)"
	@echo "LIBS $(LIBS)"
	@echo "statics $(STATICS)"
	