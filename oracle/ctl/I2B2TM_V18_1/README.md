# ETLToolSuite-WorkflowScripts - Data Load Example
This read me will be a walkthrough on loading the Docker Quick Start database.

**Author**: Thomas DeSain

***
**Example Prerequistes**
***
[Quick Start docker stack](https://github.com/hms-dbmi/docker-images/tree/master/deployments/i2b2transmart/quickstart)     
[ETL Client Docker](https://github.com/hms-dbmi/etl-client-docker)    
Data file and Mapping file from [MappingGenerator Example](https://github.com/hms-dbmi/ETLToolSuite-MappingGenerator)    

***

Steps:  
This example was validated on a Mac and AMI Linux terminals   

1. Run following docker command in on your machine hosting Quick Start Stack:
 ( Take note of the IPv4Address for the quickstart_db_1 container it will be needed in upcoming steps )
`docker network inspect quickstart_public | grep -A4 quickstart_db_1`
2. Open bash connection to your ETL Client Docker  
`docker exec -it etl-client bash`   
3. Use git to clone this project to a dir of your choosing. Change username to your git user.  
`git clone https://github.com/hms-dbmi/ETLToolSuite-WorkflowScripts`     
4. Navigate to the following dir:
`cd ETLToolSuite-WorkflowScripts`
5. Execute following command to load your Docker DB
( docker host name of ip will be the IPv4Address found in step 1. )
`bash ExampleLoad.sh <path_to_generated_entity_files> <docker_host_name_or_ip> <username_and_password_for_docker_db>`
Example:
`bash ExampleLoad.sh /configurations/ETLToolSuite-EntityGenerator/completed 172.18.0.1 pdbadmin/password`
6. You can verify all the data was loaded successfully by running following command and visiting your quickstart application.
`cat *.log | grep -B1 -A4 'Rows successfully loaded'`
***
