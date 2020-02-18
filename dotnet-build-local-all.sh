#!/bin/bash
export ASPNETCORE_ENVIRONMENT=local
BUILD=./scripts/dotnet-build-local.sh
REPOSITORIES=(Api CustomersService IdentityService OperationsService OrdersService ProductsService SignalrService)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Building a project: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     $BUILD
     cd ..
done