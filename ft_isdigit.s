# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 12:22:30 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:22:32 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global  _ft_isdigit

section .text

_ft_isdigit:
    mov rax, rdi

    cmp rax, 48
    jl no_bra
    cmp rax, 57
    jg no_bra

    ret

no_bra:
    mov rax, 0
    ret
