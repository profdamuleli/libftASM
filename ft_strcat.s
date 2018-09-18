# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldamulel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 12:23:28 by ldamulel          #+#    #+#              #
#    Updated: 2018/07/13 12:23:30 by ldamulel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global _ft_strcat

_ft_strcat:
    mov r8, 0
    mov rcx, 0
dest:
    cmp byte[rdi + r8], 0
    je src
    inc r8
    jmp dest

src:
    cmp byte[rsi + rcx], 0
    je outtt
    mov al, byte[rsi + rcx]
    mov byte[rdi + r8], al
    inc r8
    inc rcx
    jmp src

outtt:
    mov byte[rdi + r8], 0
    mov rax, rdi
    ret


    
