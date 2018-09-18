# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 12:23:09 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:23:11 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global _ft_memset

_ft_memset:
    push rdi
    mov rax, rsi 
    mov rcx, rdx
    cld
    rep stosb
    pop rdi
    ret
