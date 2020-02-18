#!/bin/bash
export ASPNETCORE_ENVIRONMENT=docker
BUILD=./scripts/dotnet-build.sh
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