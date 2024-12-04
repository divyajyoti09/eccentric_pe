echo "plotting mass parameters..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_m1_m2_Mc_eta_M_q.png \
    --parameters mass1 mass2 mchirp eta mtotal q\
    --expected-parameters mass1:17.5 mass2:17.5 mchirp:15.2346 eta:0.25 mtotal:35 q:1 \
    --plot-prior complete_config.ini \
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 

echo "plotting mchirp and chi_eff..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_Mc_q_chieff.png \
    --parameters mchirp q chi_eff \
    --expected-parameters mchirp:15.2346 q:1 chi_eff:0.0\
    --plot-prior complete_config.ini\
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 

echo "plotting distance and inclination..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_dist_incl.png \
    --parameters inclination distance \
    --expected-parameters inclination:0.5236 distance:410 \
    --plot-prior complete_config.ini\
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 

echo "plotting spins..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_spins.png \
    --parameters spin1z spin2z chi_eff \
    --expected-parameters spin1z:0 spin2z:0 chi_eff:0 \
    --plot-prior complete_config.ini\
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 

echo "plotting ra, dec and polarization..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_ra_dec.png \
    --parameters ra dec\
    --expected-parameters ra:2.8592 dec:1.0472 \
    --plot-prior complete_config.ini\
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 

echo "plotting delta_tc and phi_c..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_tc_phic.png \
    --parameters coa_phase delta_tc\
    --expected-parameters coa_phase:0 delta_tc:0 \
    --plot-prior complete_config.ini\
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 