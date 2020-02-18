#!/bin/bash
export ASPNETCORE_ENVIRONMENT=local
DOTNET_RUN=./scripts/dotnet-run.sh
REPOSITORIES=(Api CustomersService IdentityService OperationsService OrdersService ProductsService SignalrService)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Starting a service: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     $DOTNET_RUN &
     cd ..
done