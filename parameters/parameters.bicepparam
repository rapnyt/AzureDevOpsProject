using '../main.bicep'

param location = 'West Europe'
param sku = 'Standard_LRS'
param kind = 'StorageV2'

param names = [
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

param prefix = 'AzureDevOpsProject'
