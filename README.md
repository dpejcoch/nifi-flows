# nifi-flows

* This repository contains Apache NiFi sample flows for Pontus Vision GDPR solution demo used by EXL Services within Unity Data Asset Management Solution

## Data Mart
* Runs Gremlin Traversals to capture 12 key metrics recommended by ICO for GDPR compliance and ingest them to MySQL data mart for further visualisation
* DataMart.xml = NiFi flow
* DataMart.sql = Background DB structure

## Email Marketing System Ingestion
* Ingests data from randomuser.me API
* Loads it into MySQL data mart (simulation of Email Marketing System)
* Captures changes
* Propagate changes in data into POLE model using Pontus Vision processors
* EMktgSys.xml = NiFi flow
* EMktgSys.sql = Background DB structure

## Timescale DB
* As an alternative it's possible to use timescaledb time series database as a storage for metrics
Run container:
```
docker run -d --name some-timescaledb -p 5432:5432 -e POSTGRES_PASSWORD=password timescale/timescaledb
```
Connect to postgres:
```
docker run -it --net=host --rm timescale/timescaledb psql -h localhost -U postgres
```
Create database DTM using postgresql syntax:
```
CREATE DATABASE DTM;
```
Create postgres table:
```
create table Unity_Metrics (
PKID serial, 
MetricName varchar(50),
MetricValue integer,
tstmp timestamp with time zone default current_timestamp,
PRIMARY KEY(PKID, tstmp));
```
Create hypertable from table:
```
select create_hypertable('Unity_Metrics','tstmp');
```
Useful links:
* https://docs.timescale.com/v1.3/using-timescaledb/
* https://hub.docker.com/r/timescale/timescaledb/
* http://postgrest.org/en/v5.2/integrations/timescaledb.html