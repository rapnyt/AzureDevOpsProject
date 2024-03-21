param location string
param rg_names array
param rg_division_subnames array
param prefix string
param sku string
param kind string
param storage_name string

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
name: storage_name
// scope: resourceGroup(name)
scope:resourceGroup(rg_name)
params: {
  storage_name: '${prefix}${rg_division_subnames[i]}'
  location:location
  // storage_name: '${prefix}${rg_division_subnames[i]}'
  // rg_division_subnames:rg_division_subnames[i]
  prefix:prefix
  sku:sku
  kind:kind
  
}

dependsOn:[
  resourceGroup(rg_name)
]
}]
