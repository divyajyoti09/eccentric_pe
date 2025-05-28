echo "plotting mass parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_mass.png \
	--parameters mass1 mass2 mchirp eta mtotal q \
	--expected-parameters mass1:79.3333 mass2:22.6667 mchirp:35.5784 eta:0.1728 mtotal:102.0 q:3.5 \
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
	--expected-parameters mchirp:35.5784 q:3.5 chi_eff:-0.0676 chi_p:0.2236 \
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
	--expected-parameters spin1_a:0.2236 spin2_a:0.3605 spin1_azimuthal:2.9284 spin2_azimuthal:0.8154 spin1_polar:1.5655 spin2_polar:2.5958 chi_eff:-0.0676 chi_p:0.2236 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

