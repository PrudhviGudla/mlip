# mlip

This is an ongoing project for training mtp with ab-initio MD(BOMD) data from Quantum Espresso.

You can use bomd_data_process.py for processing output file of the simulation to extract forces, energies, trajectories and other information.

```
python bomd_data_process.py -i sim.out -o sim.csv
```