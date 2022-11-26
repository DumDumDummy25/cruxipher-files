#!/bin/bash
TMPDIR=/tmp/tmp$(od -A n -t d -N 3 /dev/urandom | tr -d ' ')
sudo mkdir -p $TMPDIR
sudo chown -R test $TMPDIR
eval "$(conda shell.bash hook)"
conda activate cruxipher
cp ./answer.py $TMPDIR
cd $TMPDIR
curl -sS -O https://raw.githubusercontent.com/DumDumDummy25/cruxipher-files/main/misc/q3/validate.py
echo "Running... (avg time: 1min)"
python ./validate.py
cd - > /dev/null
sudo rm -rf $TMPDIR
