targetScope = 'subscription'

@description('Specifies the location for the initial resource group.')
param location string
param names array
param prefix string

resource symbolicname 'Microsoft.Resources/resourceGroups@2022-09-01' = [for name in names:{
  name: '${prefix}-${name}'
  location: location
  tags: {
    tagName1: prefix
    tagName2: name
  }
  managedBy: 'rapnyt'
  properties: {}
}]
