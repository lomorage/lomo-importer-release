#!/bin/bash

echo -e "\033[0;32mDeploying lomorage.apk to GitHub...\033[0m"
 
./deploy.sh h:/myproject/lomoware/lomo-win/output/Win32/bin/Release/lomoimpt/ lomoimpt win

## for x64
./deploy.sh h:/myproject/lomoware/lomo-win/output/x64/bin/Release/lomoimpt/ lomoimpt_x64 win