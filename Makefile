NAME = philo

SRC  =	philo.c utils.c utils2.c another.c
OBJ  = $(SRC:.c=.o) 

HEADER = philo.h
CC = gcc
CFLAGS =  -Wall -Werror -Wextra -g

INCLUDE		= -I./include 

$(NAME):	$(OBJ) $(HEADER)
			$(CC) $(CFLAGS)  $(OBJ) -o $(NAME)
			@say -v Yuri "привет дружочки пирожочки"

.PHONY:		all clean fclean re bonus
all: $(NAME)

clean:
			@rm -f $(OBJ)

fclean: clean
	 		@rm -f $(NAME)

re: fclean all

.PHONY	:	all clean fclean re
