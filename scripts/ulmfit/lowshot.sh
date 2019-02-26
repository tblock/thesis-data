#!/bin/bash

LMBASEMODELL=data/


for fpath in lowshot/lowshot_0_*; do
	rm -f data/train.csv
	echo $fpath
	cp $fpath data/train.csv
	OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=5`
	echo $OUTPUT | tail -c 10
done

for fpath in lowshot/lowshot_1_*; do
	rm -f data/train.csv
	echo $fpath
	cp $fpath data/train.csv
        OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=5`
	echo $OUTPUT | tail -c 10
done


for fpath in lowshot/lowshot_2_*; do
        rm -f data/train.csv
        echo $fpath
        cp $fpath data/train.csv
        OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=2.5`
        echo $OUTPUT | tail -c 10
done


for fpath in lowshot/lowshot_3_*; do
        rm -f data/train.csv
        echo $fpath
        cp $fpath data/train.csv
        OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=2`
        echo $OUTPUT | tail -c 10
done

for fpath in lowshot/lowshot_4_*; do
        rm -f data/train.csv
        echo $fpath
        cp $fpath data/train.csv
        OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=1.5`
        echo $OUTPUT | tail -c 10
done

for fpath in lowshot/lowshot_5_*; do
        rm -f data/train.csv
        echo $fpath
        cp $fpath data/train.csv
        OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=1.2`
        echo $OUTPUT | tail -c 10
done

for fpath in lowshot/lowshot_6_*; do
        rm -f data/train.csv
        echo $fpath
        cp $fpath data/train.csv
        OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=0.9`
        echo $OUTPUT | tail -c 10
done

for fpath in data/lowshot/lowshot_7_*; do
        rm -f data/train.csv
        echo $fpath
        cp $fpath data/train.csv
        OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=0.7`
	echo $OUTPUT | tail -c 10
done


for fpath in data/lowshot/lowshot_8_*; do
        rm -f data/train.csv
        echo $fpath
        cp $fpath data/train.csv
        OUTPUT=`python -m ulmfit lowshot --dataset-path data/ --base-lm-path $LMBASEMODELL --name=e5 - train 20 drop_mul_cls=0.5`
        echo $OUTPUT | tail -c 10
done

