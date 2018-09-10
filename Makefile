# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ohamon <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/10 11:50:13 by ohamon            #+#    #+#              #
#    Updated: 2018/09/10 13:46:38 by ohamon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror
NAME = ft_ssl
SRC_FOLDER = src/
OBJ_FOLDER = obj/

SRC = ft_ssl.c \
	  md5.c

OBJ =  $(SRC:.c=.o)
OBJ := $(addprefix $(OBJ_FOLDER), $(OBJ))
SRC := $(addprefix $(SRC_FOLDER), $(SRC))

LIBFT = ./libft/libft.a
LIBFTLINK = ./libft/

INCLUDES = includes/

.PHONY: all clean fclean re

all: $(NAME)

libft: $(LIBFT)

$(OBJ): $(SRC)
		gcc $(CFLAGS) -c $(SRC) -I $(INCLUDES)
		@mkdir $(OBJ_FOLDER)
		@mv *.o $(OBJ_FOLDER)

$(LIBFT):
		make -C ./libft

$(NAME): $(LIBFT) $(OBJ)
		gcc $(OBJ) -o $(NAME) -L $(LIBFTLINK) -lft

clean:
		/bin/rm -rf $(OBJ_FOLDER)

fclean: clean
		/bin/rm -f $(NAME)
		make fclean -C ./libft/

re: fclean all
