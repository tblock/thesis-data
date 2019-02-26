#!/usr/bin/env python
# -*- coding: utf-8 -*-

import csv

import fileinput
import sys

import warnings
warnings.filterwarnings('ignore')


predicted_labels = []
actual_labels = []

# read from STDIN
for line in fileinput.input():
    predicted_labels.append(line.strip())

with open('fastText_test.csv','r', encoding="utf-8") as file:
    reader = csv.reader(file, delimiter='\t', quotechar='\'')
    for row in reader:
        actual_labels.append(row[0])

from sklearn.metrics import accuracy_score
print("%.2f" % (100 - accuracy_score(actual_labels, predicted_labels)*100 ))
