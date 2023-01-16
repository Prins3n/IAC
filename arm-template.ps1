$rg = "arm-demo-rg-ag3"
New-AzResourceGroup -Name $rg -Location 'West Europe' -Force

New-AzResourceGroupDeployment `
    -Name "new-storage-iac-demo" `
    -Resourcegroupname $rg `
    -TemplateFile '.\arm-template.json' `
    -accountName 'ag3iacdemo010' `
    -storageAccountSKU 'Standard_LRS'