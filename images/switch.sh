#!/usr/bin/env bash
#
# Author:       Christoph Stoettner
# E-Mail:       christoph.stoettner@stoeps.de
#
# Description:
#
# Date:         2018-07-16
#
# (c) 2018 by panagenda - All rights reserved
#

test -L slidebackground.png && rm slidebackground.png
test -L slidebackground-title.png && rm slidebackground-title.png

ln -s slidebackground-title-$1.png slidebackground-title.png
ln -s slidebackground-$1.png slidebackground.png

