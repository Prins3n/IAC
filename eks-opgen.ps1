$rg = "ang-eksamen-opgen"
New-AzResourceGroup -Name $rg -Location 'West Europe' -force

New-AzResourceGroupDeployment `
    -Name "ang-eksamen-storage" `
    -ResourceGroupName $rg `
    -TemplateFile '.\eks-opgen.json'