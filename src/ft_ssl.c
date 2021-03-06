/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ssl.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ohamon <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/09/10 11:41:18 by ohamon            #+#    #+#             */
/*   Updated: 2018/09/10 13:47:24 by ohamon           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <ssl.h>

void	print_usage()
{
	ft_putstr("usage: ft_ssl command [command opts] [command args]\n");
}

void	print_helper()
{
	
}

int		main(int ac, char **av)
{
	if (ac == 1)
		print_usage();
	else if (ft_strcmp(av[1], "md5") == 0)
		md5(av);
	else {
		ft_putstr("ft_ssl: Error: '");
		ft_putstr(av[1]);
		ft_putstr("' is an invalid command.");
	}

	return (0);
}
