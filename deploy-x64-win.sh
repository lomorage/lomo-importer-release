#!/bin/bash

echo -e "\033[0;32mDeploying lomorage.apk to GitHub...\033[0m"

home_dir=$(pwd)
echo $home_dir

rm -fr *.zip

zip_exe=./zip/7z.exe
x64_importer_path=h:/myproject/lomoware/lomo-win/output/x64/bin/Release/lomoimpt/

x64_importer_exe=lomoimpt_x64.exe
exif_tool_exe=exiftool.exe


cd $zip_exe
$zip_exe a lomoimpt_x64.zip $x64_importer_path$x64_importer_exe  $x64_importer_path$exif_tool_exe
## for x64
./deploy.sh $home_dir/ lomoimpt_x64 win