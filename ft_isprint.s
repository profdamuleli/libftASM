# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:45:30 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:22:41 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global _ft_isprint
_ft_isprint:
    mov rax, rdi
    cmp rax, 32
    jl prnt
    cmp rax, 126
    jg prnt
    mov rax, 1
    ret
prnt:
    mov rax, 0
    ret
