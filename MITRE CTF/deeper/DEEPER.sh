#!/bin/bash

# Iteration Variable
i=1

# Remove any previous directories
rm flag*
rm -r __MACOSX

# Unzip the initial Zip file, and label the flag as flag1
unzip -qq "WeNeedToGoDeeper.zip"
mv "flag" "flag1"

# Repeat until a non-recognized format is raised
while true; do
fileName="flag$i"
i=$(($i+1))

type=$(file $fileName | awk '{ print $2 }')
echo "$i: $type"

if [ $type == 'Zip' ]; then
	cp "$fileName" "flag$i.zip"
	unzip -qq "flag$i.zip"
	mv "flag" "flag$i"
	rm "flag$i.zip"
elif [ $type == "bzip2" ]; then
	cp "$fileName" "flag$i.bz2"
	bunzip2 "flag$i.bz2"
elif [ $type == "ASCII" ] && [ $(head -c3 $fileName) != 'MCA' ]; then
	base64 --decode "$fileName" > "flag$i"
elif [ $type == "gzip" ]; then
	cp "$fileName" "flag$i.gz"
	gunzip "flag$i.gz"
else
	break
fi
done

echo "$fileName : $(cat $fileName)"
