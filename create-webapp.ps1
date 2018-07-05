$resourceGroupName = RESOURCE_GROUP_NAME_HERE
$resourceGroupLocation = RESOURCE_GROUP_LOCATION_HERE
$appServicePlanName = APP_SERVICE_PLAN_NAME_HERE
$webAppName = WEB_APP_NAME_HERE

Login-AzureRmAccount

New-AzureRmResourceGroup -Name "test-rg" -Location "northcentralus"
New-AzureRmAppServicePlan -Location $resourceGroupLocation -Name $appServicePlanName -ResourceGroupName $resourceGroupName
New-AzureRmWebApp -ResourceGroupName $resourceGroupName -Name $webAppName -AppServicePlan $appServicePlanName
