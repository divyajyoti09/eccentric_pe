pycbc_inference_extract_samples --verbose \
    --input-file inference.hdf \
    --output-file posterior.hdf \
    --parameters \
        'mass1_from_mchirp_q(mchirp, q):mass1' \
        'mass2_from_mchirp_q(mchirp, q):mass2' \
        'eta_from_q(q):eta' \
	'mtotal_from_mchirp_eta(mchirp, eta_from_q(q)):mtotal' \
        spin1_a spin1_azimuthal spin1_polar spin2_a spin2_azimuthal spin2_polar \
 	'primary_spin(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1_a, spin2_a):spin1_a' \
     	'primary_spin(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1_azimuthal, spin2_azimuthal):spin1_azimuthal' \
     	'primary_spin(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1_polar, spin2_polar):spin1_polar' \
   	'secondary_spin(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1_a, spin2_a):spin2_a'  \
    	'secondary_spin(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1_azimuthal, spin2_azimuthal):spin2_azimuthal' \
   	'secondary_spin(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1_polar, spin2_polar):spin2_polar' \
    	'chi_eff_from_spherical(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1_a, spin1_polar, spin2_a, spin2_polar):chi_eff'  \
    	'chi_p_from_spherical(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1_a, spin1_azimuthal, spin1_polar, spin2_a, spin2_azimuthal, spin2_polar):chi_p' \
	mchirp q \
        loglikelihood '*' \
    --skip-groups data sampler_info \
    --force && echo "samples extracted" && echo "file created"
