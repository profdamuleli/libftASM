# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 09:44:26 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:21:18 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.data
	buffer times 5000 db 0
section	.text
	global _ft_cat

_ft_cat:
	mov r9, rdi
read:
	mov rax, 0x2000003
	mov rdi, r9
	lea rsi, [rel buffer]
	mov rdx, 5000
	syscall
	jc done
	cmp rax, 0
	je done

write:
	mov r8, rax
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel buffer]
	mov rdx, r8
	syscall
	jmp read
	
done:
	ret
