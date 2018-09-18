# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:45:43 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:23:01 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global _ft_memcpy

_ft_memcpy:
    push rdi
    mov rcx, rdx
    rep movsb
    pop rdi
    ret
