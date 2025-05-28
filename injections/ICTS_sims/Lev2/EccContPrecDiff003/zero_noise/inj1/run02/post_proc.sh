pycbc_inference_extract_samples --verbose \
    --input-file inference.hdf \
    --output-file posterior.hdf \
    --parameters \
        'mass1_from_mchirp_q(mchirp, q):mass1' \
        'mass2_from_mchirp_q(mchirp, q):mass2' \
        'eta_from_q(q):eta' \
	'mtotal_from_mchirp_eta(mchirp, eta_from_q(q)):mtotal' \
        spin1z spin2z \
    	'chi_eff(mass1_from_mchirp_q(mchirp, q), mass2_from_mchirp_q(mchirp, q), spin1z, spin2z):chi_eff'  \
	mchirp q eccentricity \
        loglikelihood '*' \
    --skip-groups data sampler_info \
    --force && echo "samples extracted" && echo "file created"
