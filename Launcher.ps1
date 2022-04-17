$rg = 'JohnLab01'
$day = Get-Date -UFormat "%A"
$date = Get-date -UFormat "%m%d"
$Hr = Get-date -Format "HH"
$min = Get-date -Format "mm"
New-AzResourceGroup -Name $rg -Location eastus -force

New-AzResourceGroupDeployment `
-name $day$date'-'$Hr$min `
-resourcegroupname $rg `
-templatefile .\StorageAccount-template.json `
-TemplateParameterFile .\StorageAccount-param.json
#-StorageName 'johnstoragesample0003' `
#-SKU 'Standard_GRS'