param storageName string

param location string = resourceGroup().location

resource store 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: storageName
  location: location
  sku: {
    name:'Standard_LRS'
  }
  kind:'StorageV2'
}


//maak location ook een parameter en deploy
