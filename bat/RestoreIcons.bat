@Echo Off 
chcp 1251>nul 
ECHO. 
ECHO — Restore the display of shortcuts on the desktop 
taskkill /im explorer.exe /f>nul 
cd %userprofile%\appdata\local 
attrib -h IconCache.db 
del IconCache.db 
explorer>nul 
exit