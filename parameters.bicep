using './main.bicep'

param location1 string = 'West Europe'

param tags_HUB object = {
  tagName1: 'AzureDevOps-Project'
  tagName2: 'HUB'
}

param tags_DEV_ object = {
  tagName1: 'AzureDevOps-Project'
  tagName2: 'DEV'
}

param tags_TEST object = {
  tagName1: 'AzureDevOps-Project'
  tagName2: 'TEST'
}

param tags_PROD object = {
  tagName1: 'AzureDevOps-Project'
  tagName2: 'PROD'
}
