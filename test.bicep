@description('Specifies the location for resources.')
param location string = 'West Europe'

resource symbolicname 'Microsoft.Resources/resourceGroups@2022-09-01' = {
  name: 'AzureDevOps-Project'
  scope: subscription()
  location: location
  tags: {
    tagName1: 'test1'
    tagName2: 'new1'
  }
  managedBy: 'rapnyt'
  properties: {}
}
