import * as mod from './parameters.bicep'
module resourceGroup1 './hub_rg.bicep' = {
  name: 'AzureDevOps-Project-HUB'
  params: {
    location: mod.location1
    tags: mod.tags_HUB
  }
}

module resourceGroup2 './dev_rg.bicep' = {
  name: 'AzureDevOps-Project-DEV'
  params: {
    location: myImports.location1
    tags: myImports.tags_DEV
  }
}

module resourceGroup3 './test_rg.bicep' = {
  name: 'AzureDevOps-Project-TEST'
  params: {
    location: myImports.location1
    tags: myImports.tags_TEST
  }
}

module resourceGroup4 './prod_rg.bicep' = {
  name: 'AzureDevOps-Project-PROD'
  params: {
    location: myImports.location1
    tags: myImports.tags_PROD
  }
}
