#!/usr/bin/perl
# -*- coding: utf-8 -*-
#===================================================
# 
# OpenVZ dum   hace un dump de las maquinas virtuales que estan en la carpeta /var/lib/vz/dump .
#
# Copyleft (C) 2012  harold Luzardo <haroldburtonl@gmial.com>
#
# This script is free software; you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software 
# Foundation; either version 3 of the License, or (at your option) any later
# version.
#
# This script is distributed in the hope that it will be useful, but WITHOUT 
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or 
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License 
# for more details.
#
# You should have received a copy of the GNU General Public License along with 
# this PACKAGE (see COPYING); if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# Created on: Feb 02, 2012 - Harold Luzardo
#
#===================================================

use strict;
use warnings;

# VARIABLES 
#my $fecha=system("date +%Y%m%d");
#my $copydump="scp /var/lib/vz/dump/*.tgz 192.168.10.152:/home/cafe/Respaldo/Datos/VzHp";

# INICIALIZACION
print "...:::Binevenido al Sistema de Respaldo CVACAfÉ:::..\n";
print "Inicializando Respaldo Carpetas y archivos compartidos en el servidor .....\n";
system ("vzdump --compress -all");

#system ("$copydump");
print "...::Hasta luego::..\n";

exit;
