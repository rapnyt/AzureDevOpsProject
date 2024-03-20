// param location1 string = 'West Europe'
// targetScope = 'subscription'

// param tags_HUB object = {
//   tagName1: 'AzureDevOps-Project'
//   tagName2: 'HUB'
// }

// param tags_DEV_ object = {
//   tagName1: 'AzureDevOps-Project'
//   tagName2: 'DEV'
// }

// param tags_TEST object = {
//   tagName1: 'AzureDevOps-Project'
//   tagName2: 'TEST'
// }

// param tags_PROD object = {
//   tagName1: 'AzureDevOps-Project'
//   tagName2: 'PROD'
// }
var location1 = 'West Europe'
var prefix = 'AzureDevOps-Project'
var resourcegroupnames = [
  '{prefix}-HUB'
  '{prefix}-DEV'
  '{prefix}-TEST'
  '{prefix}-PROD'
]
var tags  = [
  {
    tag1: prefix
    tag2: 'HUB'
  }
  {
    tag1: prefix
    tag2: 'DEV'
  }
  {
    tag1: prefix
    tag2: 'TEST'
  }
  {
    tag1: prefix
    tag2: 'PROD'
  }
]
