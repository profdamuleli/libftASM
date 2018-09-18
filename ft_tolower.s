# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:46:50 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:23:58 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_tolower

section .text

_ft_tolower:
	mov rax, rdi
	cmp rax, 65
    jl to_bad
    cmp rax, 122

    add rax, 32
    jg to_bad

    ret

to_bad:
    ret
