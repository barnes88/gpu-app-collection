#!/bin/bash
export BASH_ROOT="$( cd "$( dirname "$BASH_SOURCE" )" && pwd )"
DATA_SUBDIR="/data_dirs/"
DATA_ROOT=$BASH_ROOT$DATA_SUBDIR

if [ ! -d $DATA_ROOT ]; then
	if [ ! -f $BASH_ROOT/all.gpgpu-sim-app-data.tgz ]; then
		wget https://engineering.purdue.edu/tgrogers/gpgpu-sim/benchmark_data/all.gpgpu-sim-app-data.tgz
	fi
    tar xzvf all.gpgpu-sim-app-data.tgz -C $BASH_ROOT
fi

if [ ! -f $DATA_ROOT/ggnn/sift.tar.gz ]; then
		wget -P $DATA_ROOT/ggnn/ ftp://ftp.irisa.fr/local/texmex/corpus/sift.tar.gz
	fi
tar xzvf $DATA_ROOT/ggnn/sift.tar.gz -C $DATA_ROOT/ggnn/
rm $DATA_ROOT/ggnn/sift.tar.gz
