# NTD Data Exporter thingamajiggy

This is run to export the data needed from the NTD Database. 

## Background
The background here is that the NTD Database for Envision is hosted a RDS MySQL server on Amazon Web Services, which is not accessible from RTI's SAS Grid. So up until recently, Data Analysts had to resort to using PC SAS plus on ODBC connection to this database. No other project at RTI uses PC SAS and ITS doesn't offer licenses and barely even supports it.

## This solution
The solution here is to run this export script and copy the files to a share drive (that can be accessed from the SAS Grid). That is what this script does.

## Other notes
* If uou run this you will need to create a file at the root of this folder called creds.txt. This is where you need to put in your username and password for the cloud hosted database
