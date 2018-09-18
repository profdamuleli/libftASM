# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:43:53 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 09:43:56 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a
AS = nasm
ASFLAGS = -f macho64
SOURCE = ft_toupper.s ft_tolower.s ft_isascii.s ft_isdigit.s ft_puts.s \
	  ft_isprint.s ft_isalpha.s ft_isalnum.s ft_strlen.s ft_cat.s   \
	  ft_strcat.s ft_strdup.s ft_bzero.s ft_memcpy.s ft_memset.s    \

OBJECT = $(SOURCE:.s=.o)

all: $(NAME)

$(NAME): $(OBJECT)
	ar rc $(NAME) $(OBJECT)
	ranlib $(NAME)

clean:
	/bin/rm -rf *.o

fclean: clean
	/bin/rm -rf $(NAME)

re: fclean all
