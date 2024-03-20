import * as mod from './parameters.bicep'
targetScope = 'subscription'

@description('Specifies the location for the initial resource group.')
param location string = 'West Europe'

resource symbolicname 'Microsoft.Resources/resourceGroups@2022-09-01' = [for name in mod.resourcegroupnames:{
  name: name
  location: mod.location1
  tags: {
    tagName1: 'AzureDevOps-Project'
    tagName2: 'DEV'
  }
  managedBy: 'rapnyt'
  properties: {}
}]
