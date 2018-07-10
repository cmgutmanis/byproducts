$resourceGroupName = RESOURCE_GROUP_NAME_HERE
$resourceGroupLocation = RESOURCE_GROUP_LOCATION_HERE
$appServicePlanName = APP_SERVICE_PLAN_NAME_HERE
$webAppName = WEB_APP_NAME_HERE
# App Service Tier >= Standard Tier required for slot-based deployments. Free tier is default option.
$appServiceTier = "Standard"

Login-AzureRmAccount

New-AzureRmResourceGroup -Name $resourceGroupName -Location $resourceGroupLocation
New-AzureRmAppServicePlan -Location $resourceGroupLocation -Name $appServicePlanName -ResourceGroupName $resourceGroupName -Tier $appServiceTier
New-AzureRmWebApp -ResourceGroupName $resourceGroupName -Name $webAppName -AppServicePlan $appServicePlanName
