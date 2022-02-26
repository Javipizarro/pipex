/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pipex.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jpizarro <jpizarro@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/25 05:28:48 by jpizarro          #+#    #+#             */
/*   Updated: 2022/02/26 12:23:39 by jpizarro         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

// #include "srcs/pipex.h"
// #include "pipex.h"
#include "../pipex.h"

int		main(int argc, char *argv[], char *environ[])
{
	{
		int	i = -1;
		printf("argc = %d\n", argc);
		while(++i < argc)
			printf("argv[%d] = %s\n", i, argv[i]);
		i = -1;
		while(environ[++i])
			printf("eniron[%d] = %s\n", i, argv[i]);
	}

	check_argc(argc);
	
	printf("no hay fallos");

	return (0);
}