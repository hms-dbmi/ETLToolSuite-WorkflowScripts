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

1. Open bash connection to your ETL Client Docker  
`docker exec -it etl-client bash`   
2. Use git to clone this project to a dir of your choosing. Change username to your git user.  
`git clone https://github.com/hms-dbmi/ETLToolSuite-WorkflowScripts`     
3. Navigate to the following dir:
`cd ETLToolSuite-WorkflowScripts`
4. Execute following command to load your Docker DB
`bash ExampleLoad.sh <path_to_generated_entity_files> <docker_host_name_or_ip> <username_and_password_for_docker_db>`
Example:
`bash ExampleLoad.sh /configurations/ETLToolSuite-EntityGenerator/completed localhost pdbadmin/password`
5. 
