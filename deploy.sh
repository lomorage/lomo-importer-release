#!/bin/bash

echo -e "\033[0;32mDeploying lomoimpt.zip to GitHub...\033[0m"
 
### mm/dd/yyyy ###
now=$(date +'%Y-%m-%d_%H-%M-%S')
echo $now

#rm -fr *.zip

### $1
orig_apk_path=$1
echo "orig_apk_path="$orig_apk_path
if [[ "$orig_apk_path" == "" ]]; then
    orig_apk_path='/h/myproject/lomoware/lomo-android/app/release/'
fi

### $2
orig_apk_file=$2
echo "orig_apk_file="$orig_apk_file
if [[ "$orig_apk_file" == "" ]]; then
    orig_apk_file="com.lomoware.lomorage-v9(0.72)-release"
fi


### $3
os=$3
echo "os="$os
if [[ "$os" == "" ]]; then
    echo "please input os"
	exit 2
fi

echo $orig_apk_file

orig_apk_file_path=$orig_apk_path$orig_apk_file'.zip'

echo $orig_apk_file_path

cp $orig_apk_file_path ./

release_apk_file=$orig_apk_file$now'_'$os.zip

echo $release_apk_file

mv "./"$orig_apk_file".zip" "./"$release_apk_file



tag=$now
hub release delete $now
hub release create -a $release_apk_file -m "latest release $now" $now