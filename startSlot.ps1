$app=$args[0]
$slot=$args[1]

Start-AzureRmWebAppSlot -ResourceGroupName "WebResourceGroup" -Name $app -Slot $slot