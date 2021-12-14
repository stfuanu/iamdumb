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

az vm create -n MyVm -g MyResourceGroup --image UbuntuLTS

# 
az vm list-sizes -l eastus

# Get IP address for a VM
az vm list-ip-addresses -g MyResourceGroup -n MyVm

ssh azureuser@<list-ip-addresses>

# Get IP addresses for all VMs in a resource group.
az vm list-ip-addresses --ids $(az vm list -g MyResourceGroup --query "[].id" -o tsv)

# List all available VM sizes for resizing.
az vm list-vm-resize-options -g MyResourceGroup -n MyVm

# List available sizes for all VMs in a resource group.
az vm list-vm-resize-options --ids $(az vm list -g MyResourceGroup --query "[].id" -o tsv)

# {Resize VM or dellocate(region)} 
# https://docs.microsoft.com/en-us/azure/virtual-machines/resize-vm?tabs=cli
