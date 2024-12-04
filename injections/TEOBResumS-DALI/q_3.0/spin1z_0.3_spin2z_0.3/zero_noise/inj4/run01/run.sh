#!/bin/sh

#run with the following environment 
  #on laptop
        #conda activate pycbc_new
  #on powehi
        #conda activate pycbc_new


# sampler parameters
PRIOR_CONFIG=config.ini
DATA_CONFIG=config.ini
SAMPLER_CONFIG=dynesty.ini
OUTPUT_PATH=inference.hdf

# the following sets the number of cores to use; adjust as needed to
# your computer's capabilities
NPROCS=96

# run sampler
# Running with OMP_NUM_THREADS=1 stops lalsimulation
# from spawning multiple jobs that would otherwise be used
# by pycbc_inference and cause a reduced runtime.
OMP_NUM_THREADS=1 \
pycbc_inference --verbose \
    --seed 12 \
    --config-file ${PRIOR_CONFIG} ${DATA_CONFIG} ${SAMPLER_CONFIG} \
    --output-file ${OUTPUT_PATH} \
    --nprocesses ${NPROCS} 
