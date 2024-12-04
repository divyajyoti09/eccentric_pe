echo "plotting mass parameters..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_m1_m2_Mc_eta_M_q.png \
    --parameters mass1 mass2 mchirp eta mtotal q\
    --expected-parameters mass1:37.1428 mass2:14.8571 mchirp:20.0394 eta:0.2041 mtotal:52 q:2.5 \
    --plot-prior config.ini \
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force

echo "plotting mchirp, q, e0, and chi_eff..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_Mc_q_e0_chieff.png \
    --parameters mchirp q eccentricity chi_eff \
    --expected-parameters mchirp:20.0394 q:2.5 chi_eff:0.001\
    --plot-prior config.ini\
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
    --expected-parameters spin1z:0.001 spin2z:0.001 chi_eff:0.001 \
    --plot-prior config.ini\
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
    --plot-prior config.ini \
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
    --plot-prior config.ini \
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
    --plot-prior config.ini \
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force
