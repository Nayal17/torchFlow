#!/bin/bash
echo 'Script Working'
dir1='./dataset/'
dataset=https://www.dropbox.com/s/3k2pt9qh36vcvqb/
name1=dataset-original.zip
wget $dataset$name1 -P $dir1 && unzip $dir1$name1 && rm $name1
dataset256=https://www.dropbox.com/s/9bvxp36g13li63w/
name2=dataset-256.zip
wget $dataset256$name2 -P $dir1 && unzip $dir1$name2 && rm $name2
dataset512=https://www.dropbox.com/s/q4rdb0g26j107m9/
name3=dataset-512.zip
wget $dataset512$name3 -P $dir1 && unzip $dir1$name3 && rm $name3
dataset1280=https://www.dropbox.com/s/9totbwbdnm12jf7/
name4=dataset-1280.zip
wget $dataset1280$name4 -P $dir1 && unzip $dir1$name4 && rm $name4
echo 'Downloading dataset...'
dir2='./models'
url2=https://dl.dropboxusercontent.com/s/grgwkhv0zddmlrh/8l-1280-3232.onnx
echo 'Downloading onnx model...'
wget $url2 -P $dir2
url3=https://dl.dropboxusercontent.com/s/dv916v4t5hn6qpu/torchFlow-ckpt.pt
echo 'Downloading yolo checkpoint...'
wget $url3 -P $dir2
echo "Downloaded!"
