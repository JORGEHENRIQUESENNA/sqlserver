USE [BI]-- data base
GO
EXECUTE sp_helpfile
GO


USE [BI];

-- Obs.: Só é possível truncar o log se o banco estiver no modo Simple
ALTER DATABASE [BI] SET RECOVERY SIMPLE WITH NO_WAIT;

-- Limpa o arquivo de log.  
DBCC SHRINKFILE ('BI_log', 1); -- Atenção: Colocar o nome do arquivo de log e tamanho que se quer reduzir 

-- Volta o Banco para o modo FULL se for o caso
ALTER DATABASE [BI] SET RECOVERY FULL WITH NO_WAIT;