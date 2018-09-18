# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 12:23:46 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:23:48 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global	_ft_strlen

_ft_strlen:
	mov r10, 0
loop1:
	cmp byte[rdi + r10], 0
	je exit
	inc r10
	jmp loop1
exit:
	mov rax, r10
	ret
    
