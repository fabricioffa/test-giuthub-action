#!/usr/bin/env zsh

if [ $# -lt 2 ]
then
    echo "Usage: $0 <model-dir> <new-dir> [<base-path>]"
    exit 1
fi

set -e

if [ $# -eq 3 ]
then
    base_path=$3
else
    base_path="/home/fabricio/code/webhouse/stands/bootstrap"
fi

new_dir=$base_path/$2
model_dir=$base_path/$1

mkdir -p $new_dir
cp -r $model_dir/.* $new_dir
cp -r $model_dir/* $new_dir
code $new_dir