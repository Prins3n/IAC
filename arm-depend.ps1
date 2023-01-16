$rg = "arm-demo-rg-ag"
New-AzResourceGroup -Name $rg -Location 'West Europe' -force

New-AzResourceGroupDeployment `
    -Name "new-storage-depend-ag" `
    -ResourceGroupName $rg `
    -TemplateFile '.\arm-depend.json' `
    -storageAccountName 'ag3demodepend' `
    -planName 'agdemoplan03' `
    -webAppName 'agdemoweb03'