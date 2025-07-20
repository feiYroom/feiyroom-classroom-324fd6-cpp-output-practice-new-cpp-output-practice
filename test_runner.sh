#!/bin/bash
set -e

for i in exercise*/; do
    echo "== Testing $i =="
    g++ -o $i/a.out $i/main.cpp
    ./$i/a.out > $i/output.txt
    diff -q $i/output.txt $i/expected_output.txt
    echo "✅ Passed $i"
done
