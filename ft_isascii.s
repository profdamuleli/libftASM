# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:45:20 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:22:23 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global  _ft_isascii

_ft_isascii:
    mov rax, rdi

    cmp rax, 0
    jl no_bra
    cmp rax, 127
    jg no_bra

    mov rax, 1

    ret

no_bra:
    mov rax, 0
    ret
