# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:50:17 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:21:27 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_bzero

_ft_bzero:
	push rdi
	mov rcx, 0

buyafuti:
	cmp rcx, rsi
	je outt
	mov [rdi + rcx], byte 0
	inc rcx
	jmp buyafuti

outt:
	pop rdi
	ret
