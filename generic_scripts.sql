/*= Generic Qradar searchs for user activity: ===*/

                select DATEFORMAT(startTime, 'yyyy-MM-dd hh:mm:ss') AS "Time",  QIDDESCRIPTION(qid) as "Event Name", eventcount, sourceip, sourceport, destinationip, destinationport, "Application", URLHost, LOGSOURCENAME(logsourceid) as 'Log Source' from events where username ILIKE <ADD USERNAME HERE> order by "Time" desc start '2020-11-01 08:00' stop '2020-11-02 11:00'

/*= Group all events for a user: ===*/

                select DATEFORMAT(startTime, 'yyyy-MM-dd hh:mm:ss') AS "Time",  QIDDESCRIPTION(qid) as "Event Name", LOGSOURCENAME(logsourceid) as 'Log Source' from events where username ILIKE <ADD USERNAME HERE> group by "Event Name" order by "Time" desc last 7 HOURS

/*= Group all log sources for a user: ===*/

                select DATEFORMAT(startTime, 'yyyy-MM-dd hh:mm:ss') AS "Time",  QIDDESCRIPTION(qid) as "Event Name", LOGSOURCENAME(logsourceid) as 'Log Source' from events where HOSTNAME ILIKE <ADD HOST HERE> group by "Log Source" order by "Time" desc last 30 MINUTES

/*= Search for all user activity from O365: ===*/

                select DATEFORMAT(startTime, 'yyyy-MM-dd hh:mm:ss') AS "Time",  QIDDESCRIPTION(qid) as "Event Name", sourceip, sourceport, destinationip, "Application",  LOGSOURCENAME(logsourceid) as 'Log Source' from events where username ILIKE <ADD USERNAME HERE> and ("Log Source"='MSOffice365-Prod') order by "Time" desc last 7 HOURS

/*= Search for all alerts from Exabeam for a given user: ===*/

                select DATEFORMAT(startTime, 'yyyy-MM-dd hh:mm:ss') AS "Time",  QIDDESCRIPTION(qid) as "Event Name", sourceip, sourceport, destinationip, "Application",  LOGSOURCENAME(logsourceid) as 'Log Source' from events where username ILIKE <ADD USERNAME HERE> and ("Log Source"='Exabeam @ exabeam-analytics-master') order by "Time" desc last 7 HOURS

/*= Search for all URLs a user visited: ===*/

                select DATEFORMAT(startTime, 'yyyy-MM-dd hh:mm:ss') AS "Time",  QIDDESCRIPTION(qid) as "Event Name", URLHost, LOGSOURCENAME(logsourceid) as 'Log Source' from events where username ILIKE <ADD USERNAME HERE> group by "URLHost" order by "Time" desc last 36 HOURS
