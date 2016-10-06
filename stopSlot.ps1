$app=$args[0]
$slot=$args[1]

Stop-AzureRmWebAppSlot -ResourceGroupName "WebResourceGroup" -Name $app -Slot $slot