#!/bin/bash
export ASPNETCORE_ENVIRONMENT=local
PUBLISH=./scripts/dotnet-publish.sh
REPOSITORIES=(Api CustomersService IdentityService OperationsService OrdersService ProductsService SignalrService)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Publishing a project: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     $PUBLISH
     cd ..
done