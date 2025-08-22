echo "plotting mass parameters..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_m1_m2_Mc_eta_M_q.png \
    --parameters mass1 mass2 mchirp eta mtotal q\
    --expected-parameters mass1:20 mass2:20 mchirp:17.4110 eta:0.25 mtotal:40 q:1 \
    --plot-prior config.ini  \
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 

echo "plotting mchirp, chi_p, and chi_eff..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_Mc_q_chieff_chip.png \
    --parameters mchirp q chi_eff chi_p \
    --expected-parameters mchirp:17.4110 q:1 chi_eff:0.0026 chi_p:0.5 \
    --plot-prior config.ini \
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 

echo "plotting spins..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_spins.png \
    --parameters spin1_a spin2_a spin1_azimuthal spin2_azimuthal spin1_polar spin2_polar chi_eff chi_p \
    --expected-parameters spin1_a:0.5 spin1_azimuthal:0.1564 spin1_polar:1.5655 spin2_a:0.5 spin2_azimuthal:1.1564 spin2_polar:1.5655 chi_eff:0.0026 chi_p:0.5 \
    --plot-prior config.ini \
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
    --plot-prior config.ini  \
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
    --plot-prior config.ini  \
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
    --expected-parameters coa_phase:0.0 delta_tc:0 \
    --plot-prior config.ini  \
    --plot-contours \
    --plot-scatter \
    --plot-marginal \
    --z-arg snr \
    --force 
