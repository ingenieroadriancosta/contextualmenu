echo '-----------------------------------------------------------------------------'
$currentD=$pwd
echo ('EJECUTANDO DESIGNERV8 EN:'+$currentD)
echo ('DESIGNERV8: '+$currentD)

nvm -v


npm install
ng build

echo ("CURRENT:"+$currentD)
cd ../
echo ("CURRENT:"+$pwd)
cd $currentD
echo ("CURRENT:"+$pwd)




echo 'FIN'
echo '-----------------------------------------------------------------------------'

