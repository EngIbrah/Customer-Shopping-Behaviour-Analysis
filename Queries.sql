ALTER DATABASE customer_beahviour RENAME TO customer_behaviour

-- List active connections to your database
SELECT pid, usename, application_name, client_addr 
FROM pg_stat_activity 
WHERE datname = 'customer_beahviour';

SELECT pg_terminate_backend(pid) 
FROM pg_stat_activity 
WHERE datname = 'customer_beahviour';