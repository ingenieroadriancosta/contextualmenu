

$nameOfMain="Maven"
$nameOfContextMenus=$nameOfMain+"Here"
$mainTittle="Maven"

$command0="mvn"




# Equipo\HKEY_CLASSES_ROOT\Directory\Background\shell\
# BORRAR
reg delete ("HKEY_CLASSES_ROOT\Directory\shell\"+$nameOfMain) /f
reg delete ("HKEY_CLASSES_ROOT\Directory\Background\shell\"+$nameOfMain) /f
reg delete ("HKEY_CLASSES_ROOT\Directory\Background\ContextMenus\Menu"+$nameOfContextMenus+"\shell\open") /f
reg delete ("HKEY_CLASSES_ROOT\Directory\Background\ContextMenus\Menu"+$nameOfContextMenus+"\shell\runas") /f

######## Add Powershell Console Here options to context menu

#### Right-Click Folder context menu

# reg add ("HKEY_CLASSES_ROOT\Directory\shell\"+$nameOfMain) /v MUIVerb /t REG_SZ /d ($mainTittle) /f
# reg add ("HKEY_CLASSES_ROOT\Directory\shell\"+$nameOfMain) /v Icon /t REG_SZ /d ($command0) /f
# reg add ("HKEY_CLASSES_ROOT\Directory\shell\"+$nameOfMain) /v ExtendedSubCommandsKey /t REG_SZ /d ("Directory\Background\ContextMenus\Menu"+$nameOfMain) /f

#### Right-Click Background context menu

reg add ("HKEY_CLASSES_ROOT\Directory\Background\shell\"+$nameOfMain) /v MUIVerb /t REG_SZ /d ($mainTittle) /f
reg add ("HKEY_CLASSES_ROOT\Directory\Background\shell\"+$nameOfMain) /v Icon /t REG_SZ /d "mvn" /f
reg add ("HKEY_CLASSES_ROOT\Directory\Background\shell\"+$nameOfMain) /v ExtendedSubCommandsKey /t REG_SZ /d ("Directory\Background\ContextMenus\Menu"+$nameOfMain) /f





# ------------------------------------------------------------------------------------------------------------------------------------------
### Create sub-context menu options
##  Sub-context menu option: Console
$addsub0=""
$subMenu0=("HKEY_CLASSES_ROOT\Directory\Background\ContextMenus\Menu"+$nameOfMain+"\shell\open"+$addsub0)
$icon0=""
$command0="powershell.exe mvn clean ; 


pause
"


$title0="mvn clean"
reg delete ($subMenu0+"\command")
reg delete $subMenu0
reg add $subMenu0 /v MUIVerb /t REG_SZ /d ($title0) /f
reg add $subMenu0 /v Icon /t REG_SZ /d ($icon0) /f

# Set default key value "(Default)"
reg add ($subMenu0+"\command") /f /ve /d ($command0+"  -noexit -command Set-Location '%V'")

# *X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X
# *X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X
# *X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X*X
$addsub1="123"
$subMenu1=("HKEY_CLASSES_ROOT\Directory\Background\ContextMenus\Menu"+$nameOfMain+"\shell\open"+$addsub1)
$icon1=""
$command1="powershell.exe mvn clean install ;


pause
"


$title1="mvn clean install"
reg delete $subMenu1
reg delete ($subMenu1+"\command")
reg add $subMenu1 /v MUIVerb /t REG_SZ /d ($title1) /f
reg add $subMenu1 /v Icon /t REG_SZ /d ($icon1) /f

# Set default key value "(Default)"
reg add ($subMenu1+"\command") /f /ve /d ($command1+"  -noexit -command Set-Location '%V'")

# ------------------------------------------------------------------------------------------------------------------------------------------


















