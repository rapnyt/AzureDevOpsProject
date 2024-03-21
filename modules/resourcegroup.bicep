targetScope = 'subscription'

@description('Specifies the location for the initial resource group.')
param location string
param name string
param prefix string

resource rg 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: name
  location: location
  tags: {
    tagName1: prefix
    tagName2: name
  }
  managedBy: 'rapnyt'
  properties: {}
}


