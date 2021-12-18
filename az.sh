#!/usr/bin/env bash

# REF :

# https://azureprice.net/
# https://docs.microsoft.com/en-us/cli/azure/vm?view=azure-cli-latest

az login --use-device-code

# Get a list of subscriptions for the logged in account.
az account list

# Get the details of a subscription.
az account show

#Set a subscription to be the current active subscription
az account set --subscription mysubscription

az vm list

az vm list -g MyResourceGroup --query "[].id" -o tsv

az group create --name MyResourceGroup --location eastus

# very elaborate tutorial
# https://docs.microsoft.com/en-us/azure/virtual-machines/linux/tutorial-manage-vm

az vm create -n MyVm -g MyResourceGroup --image UbuntuLTS

# Available VM sizes in region
az vm list-sizes --location eastus --output table | head -n 10
az vm list-sizes -l eastus

az vm create \
    --resource-group myResourceGroupVM \
    --name myVMname \
    --image UbuntuLTS \
    --size Standard_B1ls \
    --generate-ssh-keys


# Get IP address for a VM
az vm list-ip-addresses -g MyResourceGroup -n MyVm
# https://docs.microsoft.com/en-us/azure/virtual-network/ip-services/virtual-network-deploy-static-pip-arm-cli


# Create FQDN (fully qualified domain name) for this VM (ip/server) 
# https://docs.microsoft.com/en-us/azure/virtual-machines/create-fqdn
# https://docs.microsoft.com/en-us/azure/virtual-machines/custom-domain


ssh azureuser@<list-ip-addresses>

# Get IP addresses for all VMs in a resource group.
az vm list-ip-addresses --ids $(az vm list -g MyResourceGroup --query "[].id" -o tsv)

# List all available VM sizes for resizing.
az vm list-vm-resize-options -g MyResourceGroup -n MyVm

# List available sizes for all VMs in a resource group.
az vm list-vm-resize-options --ids $(az vm list -g MyResourceGroup --query "[].id" -o tsv)

# {Resize VM or dellocate(region)} 
# https://docs.microsoft.com/en-us/azure/virtual-machines/resize-vm?tabs=cli

# Delete a VM & a Resource Group 
az vm delete -g MyResourceGroup -n MyVm --yes
az group delete --name MyResourceGroup

# Create VM from image
# https://docs.microsoft.com/en-us/azure/virtual-machines/vm-generalized-image-version?tabs=cli

# Create Images :
# https://docs.microsoft.com/en-us/azure/virtual-machines/linux/tutorial-custom-images

# Open/Manage ports for vm or setup (services-http/https etc..) ports , source/dest. 
# https://docs.microsoft.com/en-us/azure/virtual-machines/windows/nsg-quickstart-portal


# --------

# Azure DNS : (https://docs.microsoft.com/en-us/azure/dns/)
# https://docs.microsoft.com/en-us/cli/azure/network/dns/record-set?view=azure-cli-latest

az network dns record-set cname create
az network dns record-set cname list -g MyResourceGroup -z www.mysite.com

az rest --method POST --header "Accept=application/json" -u https://management.azure.com/providers/Microsoft.Network/checkTrafficManagerNameAvailability?api-version=2018-04-01 --body '{"name":"s00149tmpdvrpt","type":"microsoft.network/trafficmanagerprofiles"}'

