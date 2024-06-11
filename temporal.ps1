cls
# $currentD=$pwd | Select -ExpandProperty Path

# echo ("THIS: "+$currentD)

$singularName="TEMPORAL"
$mainTittle="TEMPORAL"
$command0="powershell.exe ;powershell.exe -File 'C:\Desktop_INTERN\__DEVELOP\contextualmenu/designerV8.ps1';
pause;
"

$completeWithName="HKEY_CLASSES_ROOT\Directory\Background\shell\"+$singularName

reg delete ($completeWithName) /f

reg add ($completeWithName) /v MUIVerb /t REG_SZ /d ($mainTittle) /f
reg add ($completeWithName) /v Icon /t REG_SZ /d ($command0) /f

reg add ($completeWithName+"\command") /v MUIVerb /t REG_SZ /d ($mainTittle) /f
reg add ($completeWithName+"\command") /v Icon /t REG_SZ /d ($command0) /f
reg add ($completeWithName+"\command") /d ($command0) /f

