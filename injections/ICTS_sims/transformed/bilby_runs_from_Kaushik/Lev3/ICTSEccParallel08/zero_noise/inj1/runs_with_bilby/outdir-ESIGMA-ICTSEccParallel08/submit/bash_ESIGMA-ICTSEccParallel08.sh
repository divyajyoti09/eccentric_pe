#!/usr/bin/env bash

# ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation
# PARENTS 
# CHILDREN ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1
if [[ "ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation" == *"$1"* ]]; then
    echo "Running: /mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/bilby_pipe_generation outdir-ESIGMA-ICTSEccParallel08/ESIGMA-ICTSEccParallel08_config_complete.ini --create-plots=True --submit --label ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation --idx 0 --trigger-time 1137283217.0 --outdir outdir-ESIGMA-ICTSEccParallel08"
    /mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/bilby_pipe_generation outdir-ESIGMA-ICTSEccParallel08/ESIGMA-ICTSEccParallel08_config_complete.ini --create-plots=True --submit --label ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation --idx 0 --trigger-time 1137283217.0 --outdir outdir-ESIGMA-ICTSEccParallel08
fi

# ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1
# PARENTS ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation
# CHILDREN ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_final_result ESIGMA-ICTSEccParallel08_pesummary
if [[ "ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1" == *"$1"* ]]; then
    echo "Running: /mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/bilby_pipe_analysis outdir-ESIGMA-ICTSEccParallel08/ESIGMA-ICTSEccParallel08_config_complete.ini --create-plots=True --submit --outdir outdir-ESIGMA-ICTSEccParallel08 --detectors H1 --detectors L1 --detectors V1 --label ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1 --data-dump-file outdir-ESIGMA-ICTSEccParallel08/data/ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation_data_dump.pickle --sampler dynesty"
    /mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/bilby_pipe_analysis outdir-ESIGMA-ICTSEccParallel08/ESIGMA-ICTSEccParallel08_config_complete.ini --create-plots=True --submit --outdir outdir-ESIGMA-ICTSEccParallel08 --detectors H1 --detectors L1 --detectors V1 --label ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1 --data-dump-file outdir-ESIGMA-ICTSEccParallel08/data/ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation_data_dump.pickle --sampler dynesty
fi

# ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_final_result
# PARENTS ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1
# CHILDREN 
if [[ "ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_final_result" == *"$1"* ]]; then
    echo "Running: /mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/bilby_result --result outdir-ESIGMA-ICTSEccParallel08/result/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_result.hdf5 --outdir outdir-ESIGMA-ICTSEccParallel08/final_result --extension hdf5 --max-samples 20000 --lightweight --save"
    /mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/bilby_result --result outdir-ESIGMA-ICTSEccParallel08/result/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_result.hdf5 --outdir outdir-ESIGMA-ICTSEccParallel08/final_result --extension hdf5 --max-samples 20000 --lightweight --save
fi

# ESIGMA-ICTSEccParallel08_pesummary
# PARENTS ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1
# CHILDREN 
if [[ "ESIGMA-ICTSEccParallel08_pesummary" == *"$1"* ]]; then
    echo "Running: /mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/summarypages --webdir /home/kaushik.paul/public_html/ESIGMA_recovery/ICTS_SIMS/ICTSEccParallel08/run01 --config outdir-ESIGMA-ICTSEccParallel08/ESIGMA-ICTSEccParallel08_config_complete.ini --samples outdir-ESIGMA-ICTSEccParallel08/result/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_result.hdf5 -a IMRESIGMAHM --gwdata outdir-ESIGMA-ICTSEccParallel08/data/ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation_data_dump.pickle --labels ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1 --gw --no_ligo_skymap --include_prior"
    /mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/summarypages --webdir /home/kaushik.paul/public_html/ESIGMA_recovery/ICTS_SIMS/ICTSEccParallel08/run01 --config outdir-ESIGMA-ICTSEccParallel08/ESIGMA-ICTSEccParallel08_config_complete.ini --samples outdir-ESIGMA-ICTSEccParallel08/result/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_result.hdf5 -a IMRESIGMAHM --gwdata outdir-ESIGMA-ICTSEccParallel08/data/ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation_data_dump.pickle --labels ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1 --gw --no_ligo_skymap --include_prior
fi

