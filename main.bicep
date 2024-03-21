param location string
param rg_names array
param rg_division_subnames array
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
name: '${prefix}${rg_division_subnames[i]}'
// scope: resourceGroup(name)
scope:resourceGroup(rg_name)
params: {
  location:location
  names:rg_division_subnames
  prefix:prefix
  sku:sku
  kind:kind
  
}

dependsOn:[
  resourceGroup(rg_name)
]
}]
