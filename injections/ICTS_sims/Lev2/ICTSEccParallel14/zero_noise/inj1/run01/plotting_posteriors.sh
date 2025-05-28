echo "plotting mass parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_mass.png \
	--parameters mass1 mass2 mchirp eta mtotal q \
	--expected-parameters mass1:49.7619 mass2:5.2381 mchirp:12.6348 eta:0.0862 mtotal:55.0 q:9.5 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

echo "plotting dist_incl parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_dist_incl.png \
	--parameters inclination distance \
	--expected-parameters inclination:0.5236 distance:410.0 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

echo "plotting tc_phic parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_tc_phic.png \
	--parameters coa_phase delta_tc \
	--expected-parameters coa_phase:0.0 delta_tc:0 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

echo "plotting location parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_location.png \
	--parameters ra dec polarization \
	--expected-parameters ra:2.8592 dec:1.0472 polarization:1.0472 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

echo "plotting mchirp, q, chi_eff, chi_p parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_Mc_q_chieff_chip.png \
	--parameters mchirp q chi_eff chi_p \
	--expected-parameters mchirp:12.6348 q:9.5 chi_eff:-0.5714 chi_p:0.0 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

echo "plotting spin parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_spins.png \
	--parameters spin1_a spin2_a spin1_azimuthal spin2_azimuthal spin1_polar spin2_polar chi_eff chi_p \
	--expected-parameters spin1_a:0.6 spin2_a:0.3 spin1_azimuthal:0.0 spin2_azimuthal:0.0 spin1_polar:3.1416 spin2_polar:3.1416 chi_eff:-0.5714 chi_p:0.0 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

