# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yolee <yolee@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/06 18:39:44 by yolee             #+#    #+#              #
#    Updated: 2022/10/07 02:23:34 by yolee            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = test
CC = clang++
CFLAGS = -Wall -Werror -Wextra -g
SRCS = main.cpp
OBJS = $(SRCS:.cpp=.o)

all : $(NAME)

$(NAME) : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

.cpp.o :
	$(CC) $(CFLAGS) -c $(SRCS) -o $(OBJS)

clean :
	$(RM) $(OBJS)

fclean : clean
	$(RM) $(NAME)

re : fclean all

.PHONY : all clean fclean re