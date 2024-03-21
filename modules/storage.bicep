@minLength(3)
@maxLength(24)

param location string
param prefix string
param sku string
param rg_division_subnames array
param kind string

targetScope = 'resourceGroup'

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  // name: toLower('${prefix}${name}')
  name:prefix
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
