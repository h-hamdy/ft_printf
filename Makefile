CC = cc

CFLAGS = -Wall -Wextra -Werror

AR = ar rs

NAME = libftprintf.a

SRCS = ft_printf.c ft_printf_utils.c

OBJS = $(SRCS:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJS)
	$(AR) $(NAME) $(OBJS)
	
clean:
	rm -f $(OBJS)

fclean:	clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
