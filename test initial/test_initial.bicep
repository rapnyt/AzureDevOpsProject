targetScope = 'subscription'

@description('Specifies the location for the initial resource group.')
param location string = 'West Europe'

resource symbolicname 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'AzureDevOps-Project'
  location: location
  tags: {
    tagName1: 'test1'
    tagName2: 'new1'
  }
  managedBy: 'rapnyt'
  properties: {}
}
