param location string
param rg_names array
param names array
param prefix string
param sku string
param kind string

targetScope = 'subscription'

module resourcegroups './modules/resourcegroup.bicep' = [for rg_name in rg_names :{
name: rg_name
params: {
  location:location
  name:rg_name
  prefix:prefix
}
}]


module storage './modules/storage.bicep' = [for (rg_name, i) in rg_names :{
name: '${prefix}${names[i]}'
// scope: resourceGroup(name)
scope:resourceGroup(rg_name)
params: {
  location:location
  names:names
  prefix:prefix
  sku:sku
  kind:kind
  
}

dependsOn:[
  resourceGroup(rg_name)
]
}]
