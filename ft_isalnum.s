# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:45:10 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:22:16 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalnum

_ft_isalnum:
	mov rax, rdi
	cmp rax, 48
	jl outt
	cmp rax, 57
	jg for_upper
	mov rax, 1
	ret

for_upper:
	cmp rax, 65
	jl outt
	cmp rax, 90
	jg for_lower
	mov rax, 1
	ret
    
for_lower:
	cmp rax, 97
	jl outt
	cmp rax, 122
	jg outt
	mov rax, 1
	ret

outt:
	mov rax, 0
	ret
