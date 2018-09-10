# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ohamon <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/10 11:50:13 by ohamon            #+#    #+#              #
#    Updated: 2018/09/10 11:56:27 by ohamon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CFLAGS = -Wall -Wextra -Werror
NAME = ft_ssl
SRC_FOLDER = src/
OBJ_FOLDER = obj/

SRC = ft_ssl.c

OBJ =  $(SRC:.c=.o)
OBJ := $(addprefix $(OBJ_FOLDER), $(OBJ))
SRC := $(addprefix $(SRC_FOLDER), $(SRC))

all: $(NAME)

$(NAME): $(OBJ)

