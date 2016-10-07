#!/bin/bash

set -e

cargo build --release

bins=$(find target/release -maxdepth 1 -type f -executable)

mkdir -p output/bin output/lib64

for bin in $bins; do
	echo $bin
	/usr/local/bin/get_libs.sh $bin output/lib64
	mv $bin output/bin/
done
