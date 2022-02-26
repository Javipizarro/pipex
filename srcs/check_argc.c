/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check_argc.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jpizarro <jpizarro@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/25 07:47:17 by jpizarro          #+#    #+#             */
/*   Updated: 2022/02/26 12:26:31 by jpizarro         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
**	Checks whether the number of arguments is 5
**	Only valid for the non-bonus version!!
*/

# include "../pipex.h"

void	check_argc(int argc)
{
	char	*str_arg_err;

	if (argc != 5)
	{
		str_arg_err = "Wrong arguments, please use:\n./pipex infile comand1 comand2 outfile\n";
		write(2, str_arg_err, ft_strnlen(str_arg_err, 120));
		exit(0);
	}
}