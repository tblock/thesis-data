#!/bin/sh
LANG="de"

pretrainedVectorPath="ramfs/wiki.$LANG.align.vec"
for f in ./lowshot/*.csv; do
	echo "$f"
	./fastText-0.2.0/fasttext supervised -input $f -output ramfs/model -epoch 60 -lr 0.3 -dim 300 -pretrainedVectors ramfs/wiki.de.align.vec
	./fastText-0.2.0/fasttext predict ramfs/model.bin fastText_test.csv 1 | python calc_errorrate_from_stdin.py
done
