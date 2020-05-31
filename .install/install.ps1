Write-Output "Fix pngquant-bin"
Copy-Item ./.install/pngquant.exe ./node_modules/pngquant-bin/vendor/pngquant.exe
Write-Output "Fix sharp"
if (Test-Path ./node_modules/sharp/build/) {
  Remove-Item -Recurse ./node_modules/sharp/build/
}
if (Test-Path ./node_modules/sharp/vendor/) {
  Remove-Item -Recurse ./node_modules/sharp/vendor/
}
Remove-Item ./node_modules/sharp/install/libvips.js
Copy-Item ./.install/libvips.js ./node_modules/sharp/install/
Set-Location ./node_modules/sharp/
node.exe ./install/libvips
node.exe ./install/dll-copy
Set-Location ../../
Copy-Item ./.install/libvips-cpp.dll ./node_modules/sharp/build/Release/ -Force
Copy-Item ./.install/sharp.node ./node_modules/sharp/build/Release/ -Force
Write-Output "Done."
