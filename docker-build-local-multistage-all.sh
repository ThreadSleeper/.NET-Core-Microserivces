#!/bin/bash
BUILD=./scripts/docker-build-local-multistage.sh
REPOSITORIES=(Api CustomersService IdentityService OperationsService OrdersService ProductsService SignalrService)

for REPOSITORY in ${REPOSITORIES[*]}
do
	 echo ========================================================
	 echo Building a local Docker image: $REPOSITORY
	 echo ========================================================
     cd $REPOSITORY
     $BUILD
     cd ..
done