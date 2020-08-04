-- BACKUP DATABASE [apimgtdb] TO DISK = N'/backups/apimgtdb.bak' WITH NOFORMAT, NOINIT, NAME = 'demodb-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10
-- BACKUP DATABASE [userdb] TO DISK = N'/backups/userdb.bak' WITH NOFORMAT, NOINIT, NAME = 'demodb-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10
-- BACKUP DATABASE [regdb] TO DISK = N'/backups/regdb.bak' WITH NOFORMAT, NOINIT, NAME = 'demodb-full', SKIP, NOREWIND, NOUNLOAD, STATS = 10


BACKUP DATABASE apimgtdb
TO DISK = '/backups/apimgtdb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupsapimgtdb',
      NAME = 'Full Backup of apimgtdb';
GO

BACKUP DATABASE userdb
TO DISK = '/backups/userdb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupsuserdb',
      NAME = 'Full Backup of userdb';
GO

BACKUP DATABASE regdb
TO DISK = '/backups/regdb.bak'
   WITH FORMAT,
      MEDIANAME = 'SQLServerBackupsregdb',
      NAME = 'Full Backup of regdb';
GO