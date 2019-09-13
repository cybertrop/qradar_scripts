# This is a simple QRADAR query/ script to parse for AWS Account activity via associated API calls (CloudTrail)
# Please note the fields in your QRadar instance might be different from these, so a little extraction might be necessary

SELECT DATEFORMAT(starttime,
         'EEE, MM-d-yyyy, HH:mm:ss.SS') AS 'Time', "AWS: AccountID" AS "AWS Account", username, "sourceIP" AS 'Source IP', QIDNAME(qid) AS 'Event Name', LOGSOURCENAME(logsourceid) AS 'Source', UTF8(payload) AS 'Payload'
FROM events
WHERE ("Source"='CloudTrail_S3_Primary_us-east-1')
ORDER BY  Time last 7 DAYS
