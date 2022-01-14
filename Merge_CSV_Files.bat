@echo off
echo.
echo ----- Start -----
SET dir_name=CSV_%RANDOM%%RANDOM%%RANDOM%
echo.
echo Creating an workspace: %cd%\%dir_name%\
mkdir %dir_name%
echo.
echo List of available CSV files to merge are:
dir *.csv /b
echo.
echo Merging the csv files on location: %cd%
echo.
for %%i in (*.csv) do (
echo.
echo Working on file: %%i
REM echo        1.Copying the file to workspace
copy "%%i" "%dir_name%\%%i.bak"
REM echo        2.Merging the file to Consolidated_CSV.csv
type "%dir_name%\%%i.bak" >> "%dir_name%\Consolidated_CSV.csv"
)
echo.
echo File merge operation completed. The files is available at "%dir_name%\Consolidated_CSV.csv"
REM echo.
REM echo Opening the folder in windows explorer
explorer "%cd%\%dir_name%"
echo.
echo ----- Summary -----
set cnt=0
for %%A in (*.csv) do set /a cnt+=1
echo Total CSV files detected = %cnt%
set x=0
for %%A in (%dir_name%\*.bak) do set /a x+=1
echo Total CSV files merged = %x%
echo ----- exit -----
echo.
