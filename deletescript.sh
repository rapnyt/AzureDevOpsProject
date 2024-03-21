#!/bin/bash

# List of resource group names to delete
resource_groups=("AzureDevOps-Project-HUB" "AzureDevOps-Project-DEV" "AzureDevOps-Project-TEST" "AzureDevOps-Project-PROD")

# Loop through each resource group and delete it
for rg_name in "${resource_groups[@]}"
do
    echo "Deleting resource group: $rg_name"
    az group delete --name "$rg_name" --yes
done
