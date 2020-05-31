Set-Location ./.install/
Write-Output "Fix pngquant-bin"
Copy-Item ./pngquant.exe ../node_modules/pngquant-bin/vendor/pngquant.exe
Write-Output "Fix sharp"
Remove-Item -Recurse ../node_modules/sharp/build/
Remove-Item -Recurse ../node_modules/sharp/vendor/
Remove-Item ../node_modules/sharp/install/libvips.js
Copy-Item ./libvips.js ../node_modules/sharp/install/
Copy-Item ./libvips-8.8.1-win32-x64.tar.gz ../node_modules/sharp/
Set-Location ../node_modules/sharp/
npm run install
Set-Location ../../
Write-Output "Done."
