#!/bin/bash

pacman -Qent > ~/packages.txt
pacman -Qm >> ~/packages.txt

