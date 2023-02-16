# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iporfiri <iporfiri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/15 19:11:08 by iporfiri          #+#    #+#              #
#    Updated: 2023/02/15 19:11:12 by iporfiri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
LIBFT_PATH = libft
LIBFT = $(LIBFT_PATH)/libft.a
INCLUDES = -I ./includes -I $(LIBFT_PATH)
CFLAGS = -g -Wall -Wextra -Werror $(includes)

SRCS = 
OBJS = 

RM = rm -f

all: libft $(NAME)

$(NAME): $(LIBFT) $(OBJS)
		cc $(CFLAGS) $(INCLUDE) $(OBJS) $(LIBFT) -o $@

clean:
	@rm	-f $(OBJS)
	@make $@ -C $(LIBFT_PATH)

fclean: clean
	@rm -f $(NAME)
	@make $@ -C $(LIBFT_PATH)

re: fclean all
	@make $@ -C $(LIBFT_PATH)

libft:
	make -C $(LIBFT_PATH)

.PHONY: all clean fclean re