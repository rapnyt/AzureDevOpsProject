param location string
param names array
param prefix string
targetScope = 'subscription'

module resourcegroups './resourcegroup.bicep' = {
name: 'resourcegroups'
params: {
  location:location
  names:names
  prefix:prefix
}
}
