# Overview
This repository will start a Docker container for MSSQL Server with initialization scripts which creates databases and fill with sample data for testing the data collection module for mssql

The dokcer container contains following sample databases:
1. **EmployeeDB** - Contains EmployeeDetails table with 150 records
2. **UserDB** - Contains UserDetails table with 70 records
3. **PassengerDB** - Contains PassengerDetails table with 200 records

# Running Database
## Build Image
To run the demo navigate to mssql directory after cloning the repository and run the below command
```
docker build -t mssql-db .
```
## Run container
To run the container:
```
docker run -p 1433:1433 -d mssql-db
```
To run the container with custom name:
```
docker run -p 1433:1433 -d --name [container_name] mssql-db
```
## Run Tests
After starting the container wait for **60s** for the completion of initialization scripts and creation of databases before running the data collection module.
