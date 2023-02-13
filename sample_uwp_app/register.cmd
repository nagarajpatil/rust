cargo build
copy appx\* target\debug
cd target\debug
powershell -command "Get-AppxPackage *73b67bf4-22e7-4b22-ae77-4221168a22d8* | Remove-AppxPackage"
powershell -command "Add-AppxPackage -Register AppxManifest.xml"
cd ..\..\