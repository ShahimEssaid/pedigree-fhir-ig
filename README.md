# Pedigree FHIR Implementation Guide
> This project contains the source files of the Global Alliance for Genomics and Health (GA4GH) Pedigree FHIR implementation guide.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Status](#status)
* [Build](#build)

## General info
The Pedigree subgroup in the GA4GH Clinical and Phenotypic Data Capture Work Stream has developed an initial draft of the standard that contains a [conceptual model](https://github.com/GA4GH-Pedigree-Standard/pedigree/blob/master/model.md) and a [minimal dataset document](https://docs.google.com/document/d/1UAtSLBEQ_7ePRLvDPRpoFpiXnl6VQEJXL2eQByEmfGY/edit). This project is an implementation of the conceptual model in FHIR. The generated documentation can be accessed [here](http://purl.org/ga4gh/pedigree-fhir-ig/index.html).

## Technologies
* [FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/)

## Status
This project is currently in progress. It is being developed by the [Global Alliance for Genomics and Health Clinical and Phenotypic Data Capture Work Stream](https://www.ga4gh.org/work_stream/clinical-phenotypic-data-capture-2/).

## Build
The following steps will help you build the IG locally with the help of a Docker image:
1. Create the directory path `.fhir/packages/hl7.fhir.uv.phenomics-exchange#0.1.0` in the root of this repository.
1. Download and unpack [this package](https://build.fhir.org/ig/HL7/phenomics-exchange-ig/package.tgz) into the above directory. You should have a `package` directory inside the above directory at this point.
1. Either use the Bash scripts under `bin-docker`
   2. If you run the `bin-docker/build-ig-latest-clean.sh` script, it will delete the local `.fhir` diretory and this will also require repeating steps 1 and 2 above.
2. Or use the following command line commands:
   1. To run with a new Docker container, use `run --pull=always --rm --name build-ig-latest --volume .:/ig sessaid/ig-publisher:latest -ig ig.ini`
      2. This will take slightly longer since Sushi will need to be installed every time a new container is created.
   3. To run the same container, first start with `run --pull=always --name build-ig-latest --volume .:/ig sessaid/ig-publisher:latest -ig ig.ini` to create the container.
      4. To run another IG build with the same container, use `docker container start -a build-ig-latest`



