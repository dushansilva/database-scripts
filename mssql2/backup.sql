-- BACKUP DATABASE [apimgtdb] TO DISK = N'/backups/apimgtdb.bak' WITH NOFORMAT, NOINIT, NAME = 'demodb-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10
-- BACKUP DATABASE [userdb] TO DISK = N'/backups/userdb.bak' WITH NOFORMAT, NOINIT, NAME = 'demodb-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10
-- BACKUP DATABASE [regdb] TO DISK = N'/backups/regdb.bak' WITH NOFORMAT, NOINIT, NAME = 'demodb-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10


BACKUP DATABASE apimgtdb
TO DISK = '/backups/apimgtdb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupsapimgtdb',
      NAME = 'Full Backup of apimgtdb';
GO

BACKUP DATABASE shareddb
TO DISK = '/backups/shareddb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupsshareddb',
      NAME = 'Full Backup of shareddb';
GO

BACKUP DATABASE analyticsdb
TO DISK = '/backups/analyticsdb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupsanalyticsdb',
      NAME = 'Full Backup of analyticsdb';
GO

BACKUP DATABASE dashboarddb
TO DISK = '/backups/dashboarddb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupsdashboarddb',
      NAME = 'Full Backup of dashboarddb';
GO

BACKUP DATABASE businessrulesdb
TO DISK = '/backups/businessrulesdb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupsbusinessrulesdb',
      NAME = 'Full Backup of businessrulesdb';
GO

BACKUP DATABASE permissionsdb
TO DISK = '/backups/permissionsdb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupspermissionsdb',
      NAME = 'Full Backup of permissionsdb';
GO