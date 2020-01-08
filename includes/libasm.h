/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cjaimes <cjaimes@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/06 14:11:01 by cjaimes           #+#    #+#             */
/*   Updated: 2020/01/06 15:38:55 by cjaimes          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

  
#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>

int			ft_strcmp(const char *s1, const char *s2);
char		*ft_strcpy(char * dst, const char * src);
char	 	*ft_strdup(const char *src);
size_t		ft_strlen(const char *str);
ssize_t		ft_write(int fd, const void *buf, size_t count);
ssize_t		ft_read(int fd, void *buf, size_t count);
void        say_hi();
# endif