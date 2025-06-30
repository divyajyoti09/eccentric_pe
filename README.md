# eccentric_pe

## Injections:
- Run_dir on Sonic: `/mnt/pfs/divyajyoti/eccentric_population/eccentric_pe/injections`
- Run_dir for ICTS Sims on Sonic: `/mnt/pfs/divyajyoti/eccentric_population/eccentric_pe/injections/ICTS_sims/transformed`

## Directory structure:
- Key: 
  - "#" means a number
  - NS: Non-Spinning IMR circular recovery using IMRPhenomXAS
  - AS: Aligned-Spin IMR circular recovery using IMRPhenomXAS
  - PS: Precessing-Spin IMR circular recovery using IMRPhenomXP
  - eNS: eccentric NS inspiral recovery using TaylorF2Ecc
  - eAS: eccentric AS inspiral recovery using TaylorF2Ecc
  - iAS: inspiral Aligned-Spin circular recovery
  - iPS: inspiral Precessing-Spin circular recovery using IMRPhenomXP

```mermaid
graph TD;
  Run_dir-->hybrids;
  Run_dir-->TEOBResumS-DALI;
  Run_dir-->ICTS_sims;
  hybrids-->BBH_####-->Hz[zero_noise]-->Hi[inj1]-->Hr1["run01 <br/> (NS)"]
  Hi[inj1]-->Hr2["run02 <br/> (AS)"];
  Hi[inj1]-->Hr3["run03 <br/> (PS)"];
  Hi[inj1]-->Hr4["run04 <br/> (eNS)"];

  ICTS_sims-->transformed-->Lev#-->Sim_ID-->Iz[zero_noise]-->Ii[inj1]-->Ir1["run01 <br/> (PS)"]
  Ii[inj1]-->Ir2["run02 <br/> (eAS)"]
  Ii[inj1]-->Ir3["run03 <br/> (iPS)"]

  TEOBResumS-DALI-->q_#-->spin1z_0.3_spin2z_0.3-->Tz[zero_noise]-->Ti[inj#]
  Ti[inj#]-->Tr1["run01 <br/> (AS)"]
  Ti[inj#]-->Tr2["run02 <br/> (PS)"]
  Ti[inj#]-->Tr3["run03 <br/> (eNS)"]
  Ti[inj#]-->Tr4["run04 <br/> (eAS)"]
  Ti[inj#]-->Tr5["run05 <br/> (iAS using TF2Ecc)"]
  Ti[inj#]-->Tr6["run06 <br/> (iPS)"]
```
### Inj numbers for TEOBResumS-DALI injections
| inj | eccentricity value |
|-----|--------------------|
| 1 | 0 |
| 2 | 0.05 |
| 3 | 0.1 |
| 4 | 0.15 |
| 5 | 0.2 |
| 6 | 0.25 |
| 7 | 0.3 |
| 8 | 0.35 |
