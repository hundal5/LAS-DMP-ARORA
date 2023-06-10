$test_rg = az group create --location eastus2 --name rgrparora
$test_sa = az storage account create --name strgaccarora --resource-group rgrparora --https-only "true" 
$test_sas = az storage account show --name strgaccarora --resource-group rgrparora