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

:: Convert all CSV files to a single CFG file using append mode
for %%f in (csv_data\*.csv) do (
    echo Converting %%f to CFG...
    python csv2cfg.py -i "%%f" -o "cfg_data\combined_data.cfg" -m "a"
)

echo All files have been processed!
pause