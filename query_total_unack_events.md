### Get a listing of unacknowledged events from command line.

```
sudo mysql --defaults-file=/etc/mysql/debian.cnf -Dsecurityonion_db -Ne "SELECT COUNT(*) AS cnt, signature, signature_id,timestamp FROM event WHERE status=0 GROUP BY signature ORDER BY timestamp  desc LIMIT 1;" 
```
