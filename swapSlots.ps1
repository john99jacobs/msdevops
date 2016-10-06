$app=$args[0]

$ParametersObject = @{targetSlot = "production"}

Invoke-AzureRmResourceAction -ResourceGroupName WebResourceGroup -ResourceType Microsoft.Web/sites/slots -ResourceName "$app/stage" -Action slotsswap -Parameters $ParametersObject -ApiVersion 2015-07-01 -Force