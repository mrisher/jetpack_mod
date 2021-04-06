#!/bin/sh

json -I -f $1 -e "this.header.version['2']=Date.now()"
