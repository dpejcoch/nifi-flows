# nifi-flows

* This repository contains Apache NiFi sample flows for Pontus Vision GDPR solution demo used by EXL Services within Unity Data Asset Managment Solution

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
