#!/bin/bash
/mnt/pfs/kaushik.paul/miniconda3/envs/igwn-py39/bin/bilby_pipe_analysis outdir-ESIGMA-ICTSEccParallel08/ESIGMA-ICTSEccParallel08_config_complete.ini --create-plots=True --submit --outdir outdir-ESIGMA-ICTSEccParallel08 --detectors H1 --detectors L1 --detectors V1 --label ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1 --data-dump-file outdir-ESIGMA-ICTSEccParallel08/data/ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation_data_dump.pickle --sampler dynesty

