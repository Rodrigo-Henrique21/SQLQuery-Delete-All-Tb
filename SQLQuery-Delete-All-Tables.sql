select 'drop table [dbo].['+name+'];' 
from sys.tables 

################################

EXEC sp_MSForEachTable 'TRUNCATE TABLE ?' 

Valid for SQL Server 2005 and above. May fail with constraints enabled.

To exclude everything with constraints, use:

-- desabilitar constraints
EXEC sp_msforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT all"

-- excluir linhas de todas as tabelas
EXEC sp_MSForEachTable "DELETE FROM ?"

-- habilitar constraints
exec sp_msforeachtable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all"
