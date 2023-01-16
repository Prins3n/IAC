$rg = "copy-demo-ag"
New-AzResourceGroup -Name $rg -Location 'West Europe' -force

New-AzResourceGroupDeployment `
    -Name "new-storage-copy-ag" `
    -ResourceGroupName $rg `
    -TemplateFile '.\arm-copy.json'