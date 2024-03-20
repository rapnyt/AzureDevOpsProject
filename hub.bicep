targetScope = 'subscription'

@description('Specifies the location for the initial resource group.')
param location string = 'West Europe'

resource symbolicname 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'AzureDevOps-Project-HUB'
  location: location
  tags: {
    tagName1: 'AzureDevOps-Project'
    tagName2: 'HUB'
  }
  managedBy: 'rapnyt'
  properties: {}
}
