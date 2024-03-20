import * as myImports from './parameters.bicep'

module resourceGroup1 './hub_rg.bicep' = {
  name: 'AzureDevOps-Project-HUB'
  params: {
    location: location
    tags: tags_hub
  }
}

module resourceGroup2 './dev_rg.bicep' = {
  name: 'AzureDevOps-Project-DEV'
  params: {
    location: location
    tags: tags_dev
  }
}

module resourceGroup3 './test_rg.bicep' = {
  name: 'AzureDevOps-Project-TEST'
  params: {
    location: location
    tags: tags_test
  }
}

module resourceGroup4 './prod_rg.bicep' = {
  name: 'AzureDevOps-Project-PROD'
  params: {
    location: location
    tags: tags_prod
  }
}
