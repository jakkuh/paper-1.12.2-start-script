#!/bin/bash

CURRENT=`pwd`
BASENAME=`basename "$CURRENT"`

screen -S $BASENAME sh loop.sh
