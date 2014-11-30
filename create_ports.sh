#!/bin/bash
mkdir ports && cd ports
for i in {2200..2299}
do
    touch $i
done
