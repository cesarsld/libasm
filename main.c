/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cjaimes <cjaimes@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/06 14:10:14 by cjaimes           #+#    #+#             */
/*   Updated: 2020/01/08 13:35:23 by cjaimes          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
int	ft_strcmp1(const char *s1, const char *s2)
{
	while (*s1 && *s2)
		if (*s1++ != *s2++)
			return ((unsigned char)*--s1 - (unsigned char)*--s2);
	return ((unsigned char)*s1 - (unsigned char)*s2);
}

int main()
{
    //say_hi();
    printf("len is %zd\n", ft_strlen("oyoyfff"));
    char b[50] = "Je suis groot! hahahaha";
    char a[] = "Julie neko desu";
    ft_strcpy(b, a);
    printf("b is = %s\n", b);
    char c[100] = "the cake is a lie !\0I'm hidden lol\r\n";
    char d[100] = "there is no stars in the sky";
    printf("res of cmp is %d\n", ft_strcmp(c, d));
    printf("res of cmp is %d\n", ft_strcmp1(c, d));
    printf("res of cmp is %d\n", strcmp(c, d));
    printf(" write amount is %zd\n", ft_write(1, "abcdefgh", 6));
    printf(" write amount is %zd\n", write(1, "abcdefgh ", 6));
    char *f = ft_strdup("oyo y");
    printf("malloc is %s\n", f);
}

// segment .data
// 	hello:     db 'Hello world!',10
// 	helloLen:  equ $-hello

// segment .text
// 	global say_hi

// _say_hi:
// 	mov rax,4
// 	mov rbx,1
// 	mov rcx,hello
// 	mov rdx,helloLen
// 	int 80h 
// 		ret
