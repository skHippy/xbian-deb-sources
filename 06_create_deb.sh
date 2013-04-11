#!/bin/bash
#
#Copyright 2013 CurlyMo <development@xbian.org>
#
#This file is part of XBian - XBMC on the Raspberry Pi.
#
#XBian is free software: you can redistribute it and/or modify it under the
#terms of the GNU General Public License as published by the Free Software
#Foundation, either version 3 of the License, or (at your option) any later
#version.
#
#XBian is distributed in the hope that it will be useful, but WITHOUT ANY
#WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
#FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
#details.
#
#You should have received a copy of the GNU General Public License along
#with XBian. If not, see <http://www.gnu.org/licenses/>
#
./create_control.sh
rm $(grep "Package" control | awk '{print $2}')$(grep "Version" control | grep -o "[0-9\.]\{1,\}").deb
ar -rc $(grep "Package" control | awk '{print $2}')$(grep "Version" control | grep -o "[0-9\.]\{1,\}").deb debian-binary control.tar.gz data.tar.gz