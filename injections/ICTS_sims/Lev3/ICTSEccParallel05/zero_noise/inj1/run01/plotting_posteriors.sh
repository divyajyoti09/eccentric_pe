echo "plotting mass parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_mass.png \
	--parameters mass1 mass2 mchirp eta mtotal q \
	--expected-parameters mass1:64.1667 mass2:45.8333 mchirp:47.0778 eta:0.2431 mtotal:110.0 q:1.4 \
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
	--expected-parameters mchirp:47.0778 q:1.4 chi_eff:-0.2083 chi_p:0.0 \
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
	--expected-parameters spin1_a:0.4999 spin2_a:0.2 spin1_azimuthal:3.1416 spin2_azimuthal:3.1416 spin1_polar:3.1416 spin2_polar:0.0 chi_eff:-0.2083 chi_p:0.0 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

