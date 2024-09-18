#!/bin/bash
#wget https://github.com/cmsi/malive-tutorial/releases/download/tutorial-20210520/qe_GaAs.tgz
#tar zxvf qe_GaAs.tgz 
#cd qe_GaAs
#wget https://pseudopotentials.quantum-espresso.org/upf_files/Ga.pbe-dn-kjpaw_psl.1.0.0.UPF
#wget https://pseudopotentials.quantum-espresso.org/upf_files/As.pbe-n-kjpaw_psl.1.0.0.UPF

export OMP_NUM_THREADS=1
pw.x < GaAs.scf.in | tee GaAs.scf.out
pw.x < GaAs.nscf.in | tee GaAs.nscf.out
bands.x < GaAs.band.in | tee GaAs.band.out
gnuplot -persistent plot.gp