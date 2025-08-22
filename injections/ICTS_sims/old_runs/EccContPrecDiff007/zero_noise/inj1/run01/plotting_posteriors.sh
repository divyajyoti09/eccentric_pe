echo "plotting mass parameters..."

pycbc_inference_plot_posterior \
    --input-file posterior.hdf \
    --output-file posterior_m1_m2_Mc_eta_M_q.png \
    --parameters mass1 mass2 mchirp eta mtotal q\
    --expected-parameters mass1:51.4286 mass2:20.5714 mchirp:27.7469 eta:0.2041 mtotal:72 q:2.5 \
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
    --expected-parameters mchirp:51.4286 q:2.5 chi_eff:0.0035 chi_p:0.4123 \
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
    --expected-parameters spin1_a:0.4123 spin1_azimuthal:1.4922 spin1_polar:1.5624 spin2_a:0.4123 spin2_azimuthal:1.4922 spin2_polar:1.5624 chi_eff:0.0035 chi_p:0.4123 \
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
