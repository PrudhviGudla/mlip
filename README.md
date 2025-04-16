# mlip

This is an ongoing project for training mtp with ab-initio MD(BOMD) data from Quantum Espresso.

You can use out2csv.py for processing output file of the Quantum espresso BOMD(Born-Oppenheimer Molecular Dynamics) simulation to extract forces, energies, trajectories and other information to a csv file.

```
python out2csv.py -i "sim.out" -o "sim.csv"
```

You can use csv2cfg.py file on multiple csv files with append argument to create a combine cfg file. You can run the process_files.bat script in windows to process and create such cfg file from multiple out files from multiple simulation data from Quantum Espresso.

```
python csv2cfg.py -i "sim.csv" -o "sim.out" -m "a" 
```
