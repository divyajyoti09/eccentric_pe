#!/bin/bash
#SBATCH --partition=long
#SBATCH --time=00:10:00
#SBATCH --output=outdir-ESIGMA-ICTSEccParallel08/submit/ESIGMA-ICTSEccParallel08_master_slurm.out
#SBATCH --error=outdir-ESIGMA-ICTSEccParallel08/submit/ESIGMA-ICTSEccParallel08_master_slurm.err

jid0=($(sbatch --partition=long --nodes=1 --ntasks-per-node=1 --mem=8G --time=1:00:00 --job-name=ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation  --output=outdir-ESIGMA-ICTSEccParallel08/log_data_generation/ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation.out --error=outdir-ESIGMA-ICTSEccParallel08/log_data_generation/ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation.err outdir-ESIGMA-ICTSEccParallel08/submit/ESIGMA-ICTSEccParallel08_data0_1137283217-0_generation.sh))

echo "jid0 ${jid0[-1]}" >> outdir-ESIGMA-ICTSEccParallel08/submit/slurm_ids

jid1=($(sbatch --partition=long --nodes=1 --ntasks-per-node=48 --mem=96G --time=45-00:00:00 --job-name=ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1 --dependency=afterok:${jid0[-1]} --output=outdir-ESIGMA-ICTSEccParallel08/log_data_analysis/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1.out --error=outdir-ESIGMA-ICTSEccParallel08/log_data_analysis/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1.err outdir-ESIGMA-ICTSEccParallel08/submit/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1.sh))

echo "jid1 ${jid1[-1]}" >> outdir-ESIGMA-ICTSEccParallel08/submit/slurm_ids

jid2=($(sbatch --partition=long --nodes=1 --ntasks-per-node=1 --mem=4G --time=1:00:00 --job-name=ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_final_result --dependency=afterok:${jid1[-1]} --output=outdir-ESIGMA-ICTSEccParallel08/log_data_analysis/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_final_result.out --error=outdir-ESIGMA-ICTSEccParallel08/log_data_analysis/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_final_result.err outdir-ESIGMA-ICTSEccParallel08/submit/ESIGMA-ICTSEccParallel08_data0_1137283217-0_analysis_H1L1V1_final_result.sh))

echo "jid2 ${jid2[-1]}" >> outdir-ESIGMA-ICTSEccParallel08/submit/slurm_ids

jid3=($(sbatch --partition=long --nodes=1 --ntasks-per-node=1 --mem=16G --time=1:00:00 --job-name=ESIGMA-ICTSEccParallel08_pesummary --dependency=afterok:${jid1[-1]} --output=outdir-ESIGMA-ICTSEccParallel08/log_results_page/ESIGMA-ICTSEccParallel08_pesummary.out --error=outdir-ESIGMA-ICTSEccParallel08/log_results_page/ESIGMA-ICTSEccParallel08_pesummary.err outdir-ESIGMA-ICTSEccParallel08/submit/ESIGMA-ICTSEccParallel08_pesummary.sh))

echo "jid3 ${jid3[-1]}" >> outdir-ESIGMA-ICTSEccParallel08/submit/slurm_ids
