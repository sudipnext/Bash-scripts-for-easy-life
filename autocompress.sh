#!/bin/sh

for i in *; do tar -zcvf $i.tar.gz $i; done