export RG_NAME="rg-name-here"
export FACTORY_NAME="factory-name-here"

# Get existing datafactory to fetch payload to be used later for PUT
az rest \
  -m get \
  -u "/subscriptions/{subscriptionId}/resourceGroups/${RG_NAME}/providers/Microsoft.DataFactory/factories/${FACTORY_NAME}?api-version=2018-06-01"

# Update datafactory
az rest \
  -m put \
  -u "/subscriptions/{subscriptionId}/resourceGroups/${RG_NAME}/providers/Microsoft.DataFactory/factories/${FACTORY_NAME}?api-version=2018-06-01" \
  -b @datafactory.json