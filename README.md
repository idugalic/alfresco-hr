# Alfresco Community #

Alfresco Community Edition is the open source alternative for Enterprise Content Management. 
It  allows organizations to manage any type of content, from simple office documents to scanned images, photographs, engineering drawings and large video files.

Common usage includes:

* Document management systems
* Content platforms
* CMIS-compliant repositories
* BPM (Business Process Management)

## Modules
Maven Alfresco SDK - All-in-One Archetype generated multi-module project.

The All-in-One Alfresco project is composed by the following modules:

* **repo-amp**: An Repository Tier AMP project, demonstrating sample project structure and demo component loading
* **repo**: An alfresco.war Repository Extension, overlaying the Alfresco WAR with custom resources / classes and depending on the amp project
* **share-amp**: A Share Tier AMP project, demonstrating sample project structure and demo component loading
* **share**: A share.war extension, overlaying the Share WAR with the custom developed share-amp
* **solr**: An Alfresco alfresco-*-*-solr.zip overlay / customization to configure Apache Solr cores properties
* **runner**: A Tomcat + H2 runner, capable of running all the aforementioned projects in embedded mode for demo / integration-testing purposes

The project provides support for typical development lifecycle use cases like:

* Rapid development, in full IDE integration, and with hot classes reloading (using spring-loaded, check prerequisites).
* AMP/WAR packaging
* AMP Unit testing and rapid development
* Run embedded in Tomcat + H2 database. (NOTE: this is not a supported stack so use only for development purposes)
* Integration testing
* AMP to WAR installation and overlay (embedding Alfresco Module Managment Tool)
* Release and distribution

### What is AMP

As a general rule of thumb, anything that is considered to be an 'installable' extension to Alfresco should be called a module and packaged as one or more AMP files (best practice is to provide one AMP for the repository tier and another for the Share UI tier). An AMP file can contain as little as a set of custom templates or a new category. It can contain a custom model and associated UI customisations. It could contain a complete new set of functionality.

AMP files can be installed into the Alfresco and Share WAR files using the Module Management Tool.

### Sample Human Resources (Hiring) process

* **repo-amp** module contains content model definitions and advanced workflow to support **'Hiring process'** 
* **share-amp** module contains forms and configuration that is necessary for  Hiring process to be presented in the Share application.

[[https://github.com/idugalic/alfresco-hr/blob/master/hiring-alfresco.bpmn20.jpg|alt=Hiring process]]


## Runing instructions

* Enter the project folder and run ./run.sh (you might need to chmod u+x run.sh to make it executable). This will setup the SDK and start Alfresco, Share and Solr in embedded mode.
* Wait for the startup of the webapps and then go http://localhost:8080.
* Import the projects in your favorite IDE (with Maven integration) and start developing right away.

## Boost Your Productivity

* http://summit.alfresco.com/boston/sessions/boost-your-productivity-next-gen-bpm-tooling
* http://bpmn20inaction.blogspot.be/2014/01/activiti-designer-5140-released.html
* http://docs.alfresco.com/5.0/tasks/wf-install-activiti-designer.html


## Resources

* [Alfresco Documentation](http://docs.alfresco.com)
* [Alfresco Enterprise Support portal](https://support.alfresco.com)
* [Developer series](http://ecmarchitect.com/alfresco-developer-series)
* [Fork and contribute to this SDK](https://github.com/Alfresco/alfresco-sdk/fork)
* [Report an Alfresco issue](https://issues.alfresco.com/jira/browse/ALF)
* [Certification](http://university.alfresco.com/certification)
