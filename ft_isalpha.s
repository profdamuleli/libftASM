# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 12:22:02 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:22:05 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global  _ft_isalpha

section .text

_ft_isalpha:

for_lower:
    mov rax, rdi
    cmp rax, 65
    jl no_bra
    cmp rax, 90
    jg for_upper
    
    ret

for_upper:
    mov rax, rdi
    cmp rax, 97
    jl no_bra
    cmp rax, 122
    jg no_bra

    ret

no_bra:
    mov rax, 0
    ret
