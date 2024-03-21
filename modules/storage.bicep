@minLength(3)
@maxLength(24)

param location string
param prefix string
param sku string
// param storage_name string
param kind string

targetScope = 'resourceGroup'

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  // name: toLower('${prefix}${name}')
  name:storage_name
  location: location
  sku: {
    name: sku
  }
  kind: kind
  tags: {
    tagName1: prefix
  }
  properties: {}
}
