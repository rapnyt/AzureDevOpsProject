@minLength(3)
@maxLength(24)

param location string
param prefix string
param sku string
param names array
param kind string

targetScope = 'resourceGroup'

resource storage 'Microsoft.Storage/storageAccounts@2023-01-01' = [for name in names :{
  name: toLower('${prefix}${name}')
  location: location
  sku: {
    name: sku
  }
  kind: kind
  tags: {
    tagName1: prefix
  }
  properties: {}
}]
