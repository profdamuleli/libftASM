# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:47:31 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:24:05 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
        global _ft_toupper
_ft_toupper:
	    mov rax, rdi
	    cmp rax, 97
        jl to_bad
        cmp rax, 122
        jg to_bad
        add rax, -32
        ret
to_bad:
    ret
