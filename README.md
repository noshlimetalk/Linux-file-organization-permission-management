### Disk Quota configuration 

filesystem quota were enabled to prevent storagr abuse by different departments

## Steps included 
1. enabling quota databse
2. assiging per-user storage limits

## Example

Department like engineering were limited to 500MB of soft limit and 600MB of hard limit

## Commands used 
1. edquota
2. quota
3. repquota
4. quotaon

## Clean up & Archiving script

1. Finds files older than 30 days
2. Moves them into /company/archive
3. Logs clean up automatically

## Access Control Lists (ACLs)

ACLs were implemented to allow special cross-department access without modifying primary group permissions

example 

setfacl -m u:justinrwx /company/engineering
getfacl /company/engineering

## Real-world Revelance

This project reflects how linux servers are managed in an enterprise environments where multiple teams share resources securely while maintaining strict access control and storage limits. 

## Skills demonstrated 

1. Linux System administration
2. User and group management
3. File permissions and ownership
4. Access Control Lists(ACLs)
5. Bash scripting automation
6. Cron Job handling
7. Filesystem quota management
8. Server storage governance
   

