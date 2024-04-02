using '../main.bicep'

param location = 'West Europe'
param sku = 'Standard_LRS'
param kind = 'StorageV2'
param storage_name = 'AzureDevOpsProjectDefaultName'
param prefix = 'AzureDevOpsProject'

param rg_division_subnames = [
  'HUB'
  'DEV'
  'TEST'
  'PROD'
]

param rg_names = [
  'AzureDevOps-Project-HUB'
  'AzureDevOps-Project-DEV'
  'AzureDevOps-Project-TEST'
  'AzureDevOps-Project-PROD'
]



