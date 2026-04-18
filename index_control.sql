SELECT 
    OBJECT_NAME(i.object_id) AS TableName,
    i.name AS IndexName,
    ISNULL(s.user_seeks, 0) AS user_seeks,
    ISNULL(s.user_scans, 0) AS user_scans,
    ISNULL(s.user_lookups, 0) AS user_lookups,
    ISNULL(s.user_updates, 0) AS user_updates
FROM sys.indexes i
LEFT JOIN sys.dm_db_index_usage_stats s
    ON i.object_id = s.object_id
    AND i.index_id = s.index_id
    AND s.database_id = DB_ID()
WHERE OBJECTPROPERTY(i.object_id, 'IsUserTable') = 1
  AND i.name IS NOT NULL
ORDER BY TableName, IndexName;