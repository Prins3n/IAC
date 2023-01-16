$rg = "arm-demo-rg-ag-con"
New-AzResourceGroup -Name $rg -Location 'West Europe' -Force

New-AzResourceGroupDeployment `
    -name "new-storage-con-demo-ag" `
    -ResourceGroupName $rg `
    -TemplateFile '\arm-con.json'