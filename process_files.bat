@echo off
setlocal enabledelayedexpansion

:: Create directories if they don't exist
if not exist "csv_data" mkdir csv_data
if not exist "cfg_data" mkdir cfg_data

:: Process each .out file in out_data folder
for %%f in (out_data\*.out) do (
    echo Processing %%f to CSV...
    python out2csv.py -i "%%f" -o "csv_data\%%~nf.csv"
)

:: Calculate the number of rows to extract from each CSV file
set TOTAL_ROWS=10000
set /a FILE_COUNT=0

for %%f in (csv_data\*.csv) do (
    set /a FILE_COUNT+=1
)

if !FILE_COUNT! EQU 0 (
    echo No CSV files found in csv_data folder.
    pause
    exit /b
)

set /a ROWS_PER_FILE=!TOTAL_ROWS! / !FILE_COUNT!

:: Convert all CSV files to a single CFG file using append mode
for %%f in (csv_data\*.csv) do (
    echo Converting %%f to CFG with !ROWS_PER_FILE! rows...
    python csv2cfg.py -i "%%f" -o "cfg_data\combined_data.cfg" -m "a" --start 0 --end !ROWS_PER_FILE!
)

echo All files have been processed!
pause