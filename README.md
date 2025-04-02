# mlip

This is an ongoing project for training mtp with ab-initio MD(BOMD) data from Quantum Espresso.

You can use out2csv.py for processing output file of the Quantum espresso BOMD(Born-Oppenheimer Molecular Dynamics) simulation to extract forces, energies, trajectories and other information to a csv file.

```
python out2csv.py -i sim.out -o sim.csv
```

(Note: csv2cfg.py file is still under testing)

<!-- You can use csv2cfg.py to convert it into the .cfg file format for training MTP through mlip-3 -->