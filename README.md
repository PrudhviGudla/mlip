# mlip

This is an ongoing project for training mtp with ab-initio MD(BOMD) data from Quantum Espresso.

You can use out2csv.py for processing output file of the Quantum espresso BOMD(Born-Oppenheimer Molecular Dynamics) simulation to extract forces, energies, trajectories and other information to a csv file.

```
python out2csv.py -i "sim.out" -o "sim.csv"
```

You can use csv2cfg.py file on multiple csv files with append argument to create a combined cfg file. You can also choose the start and end index from the csv file to be converted to cfg file.

```
python csv2cfg.py -i "sim.csv" -o "sim.out" -m "a" --start 26 --end 15617
```

You can save all the out files to be converted in the out_data directory. Then, you can run the process_files.bat script in case of windows to process all .out files and create csv files for each .out file. Further it converts all the csv files into a combined cfg file. Based on the TOTAL_ROWS value, equal number of configurations from each csv file are extracted and combined into a .cfg file.