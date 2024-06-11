$singularName="CMDHERE"
$mainTittle="CMD HERE"
$command0="cmd.exe"
$completeWithName="HKEY_CLASSES_ROOT\Directory\Background\shell\"+$singularName

reg delete ($completeWithName) /f

reg add ($completeWithName) /v MUIVerb /t REG_SZ /d ($mainTittle) /f
reg add ($completeWithName) /v Icon /t REG_SZ /d ($command0) /f

reg add ($completeWithName+"\command") /v MUIVerb /t REG_SZ /d ($mainTittle) /f
reg add ($completeWithName+"\command") /v Icon /t REG_SZ /d ($command0) /f
reg add ($completeWithName+"\command") /d ($command0) /f

