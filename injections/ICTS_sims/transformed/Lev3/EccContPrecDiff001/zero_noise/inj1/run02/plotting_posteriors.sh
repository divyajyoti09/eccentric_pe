echo "plotting mass parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_mass.png \
	--parameters mass1 mass2 mchirp eta mtotal q \
	--expected-parameters mass1:27.0 mass2:9.0 mchirp:13.1857 eta:0.1875 mtotal:36.0 q:3.0 \
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

echo "plotting mchirp, q, chi_eff, eccentricity parameters..."
pycbc_inference_plot_posterior \
	--input-file posterior.hdf \
	--output-file posterior_Mc_q_chieff_e0.png \
	--parameters mchirp q chi_eff eccentricity \
	--expected-parameters mchirp:13.1857 q:3.0 chi_eff:0.0253 eccentricity:0.04 \
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
	--parameters spin1z spin2z chi_eff \
	--expected-parameters spin1z:0.0013 spin2z:0.1008 chi_eff:0.0253 \
	--plot-prior complete_config.ini \
	--plot-contours \
	--plot-scatter \
	--plot-marginal \
	--z-arg snr \
	--force 

