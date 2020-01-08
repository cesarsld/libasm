// char	*ft_strcpy(char *dst, const char *src)
// {
//     char *cpy;

//     cpy = dst;
// 	while (*src)
// 		*dst++ = *src++;
// 	*dst = '\0';
// 	return (cpy);
// }

// int	ft_strcmp(const char *s1, const char *s2)
// {
// 	while (*s1 && *s2)
// 		if (*s1++ != *s2++)
// 			return ((unsigned char)*--s1 - (unsigned char)*--s2);
// 	return ((unsigned char)*s1 - (unsigned char)*s2);
// }
#include <unistd.h>
void ww()
{
	write(1, "Hello", 5);
}
