if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-,/,%,+,*,(,),,
syn case ignore

" Input Block {{{
syn region orcaInputBlock matchgroup=orcaInputBlockMarker start=/^% *\(autoci\|basis\|casscf\|cipsi\|cim\|cis\|compound\|coords\|cpcm\|elprop\|eprnmr\|esd\|freq\|geom\|loc\|irc\|mcrpa\|md\|mdci\|method\|mp2\|mrcc\|mrci\|neb\|numgrad\|nbo\|output\|pal\|paras\|plots\|qmmm\|rel\|rocis\|rr\|scf\|symmetry\|tddft\|xtb\)/ end=/^end$/ contains=orcaLineComment,orcaEmbeddedComment,orcaKeywordOptions,orcaKeywordBoolean,orcaInputBlockVariable,orcaSubBlock transparent

syn keyword orcaKeywordBoolean contained
\ All
\ Auto
\ Buffered
\ Disk
\ False
\ None
\ Off
\ On
\ Read
\ Shared
\ Standard
\ True
\ CenterOfElCharge
\ CenterOfNucCharge
\ CenterOfSpinDens
\ CenterOfMass

syn match orcaKeywordBoolean /print *\[[^\[\]]*\]/ contained
hi def link orcaKeywordBoolean Boolean

syn keyword orcaKeywordOptions contained
\ ABS
\ ACCCI
\ AHAS
\ AM1
\ Adaptive
\ Atensor
\ AugHess
\ Auto
\ CCSD
\ CEPA0
\ CEPA1
\ CEPA2
\ CEPA3
\ CHELPG
\ CID
\ CISD
\ CMatrix
\ CP
\ CSF
\ CSFCI
\ CVW
\ CanonOrbs
\ Cart
\ Cholesky
\ Cholesky_Q
\ Conv
\ Coulomb
\ DIIS
\ DLPNO_NEVPT2
\ DMRGCI
\ DOI
\ Davidson1
\ Davidson2
\ Delta
\ Det
\ Diag
\ Diag_Q
\ Diagonal
\ Direct
\ Direct2
\ Direct3
\ DoubleShell
\ Efficient
\ Electrostatic
\ Extreme
\ FC_EWin
\ FC_Electrons
\ FC_None
\ FICDDCI3
\ FICMRACPF
\ FICMRAQCC
\ FICMRCC
\ FICMRCEPA0
\ FICMRCI
\ FIC_CASPT2
\ FIC_CASPT2K
\ FIC_NEVPT2
\ FMatrix
\ Fluor
\ Fly
\ Full
\ FullMP2
\ FullTrafo
\ GFNFF
\ Gauss
\ HCore
\ HF3C
\ HHAS
\ HHBS
\ Hirshfeld
\ Huckel
\ ICE
\ Int
\ KDIIS
\ LocOrbs
\ Loewdin
\ Loose
\ Lorentz
\ MORead
\ MRACPF
\ MRACPF2
\ MRACPF2a
\ MRAQCC
\ MRCEPA_0
\ MRCEPA_R
\ MRCI
\ MRDDCI1
\ MRDDCI2
\ MRDDCI3
\ MRMP2
\ MRMP3
\ MRRE2
\ MRRE3
\ MRRE4
\ Mechanical
\ Medium
\ Mulliken
\ NMR
\ NR
\ NewDVD
\ OldPrunning
\ Osz
\ Overlap
\ PAtom
\ PBEH3C
\ PK
\ PM3
\ PMOs
\ PModel
\ Phosp
\ PipekMezey
\ Projected
\ QD-SC-NEVPT2
\ QD_VanVleck
\ QN
\ QRO
\ RI
\ RITrafo
\ RR
\ Relaxed
\ Remove
\ SC_NEVPT2
\ SDO
\ SORCI
\ SORCP
\ SOSCF
\ SSandSO
\ SemiDirect
\ Sloppy
\ Strong
\ SuperCI
\ SuperCI_PT
\ Tight
\ Triplet
\ UFAS
\ UFBS
\ UNO
\ UnPruned
\ Unchanged
\ Unrelaxed
\ VG
\ VGFC
\ VH
\ VeryTight
\ Voigt
\ XTB
\ XTB1
\ cm-1
\ dOrbs
\ eV
\ fOrbs
\ nm
\ nr
\ r2SCAN3c
\ relaxed
\ ri


syn match orcaKeywordOptions /print *\[[^\[\]]*\]/ contained
hi def link orcaKeywordOptions Type

syn keyword orcaInputBlockVariable contained
\ ACM
\ ActiveAtoms
\ AllSingles
\ ApproxaDen
\ BWeight
\ Basis
\ BrokenSym
\ CIStep
\ CIType
\ COSXGradType
\ CType
\ Calc_Hess
\ CanonStep
\ CentralDiff
\ Charge
\ Charge_Medium
\ Charge_Total
\ ConnectFragments
\ ConstrainFragments
\ ConvDer
\ CoorSys
\ D3TPre
\ D4Step
\ D4TPre
\ DCorr
\ DEle
\ DIISMaxEq
\ DSOC
\ DSS
\ DTensor
\ DTol
\ DavidsonOpt
\ Density
\ DirectResetFreq
\ Direction
\ DoDIDplot
\ DoHT
\ DoNTO
\ DoQuads
\ DoRootWise
\ DoSOC
\ DoSSC
\ DoSTEOMNatTransOrb
\ DoSingles
\ DoSolv
\ DoStoreSTEOM
\ ECP
\ ESDFlag
\ ESHessian
\ ETol
\ EWin
\ Epsilon
\ Excitations
\ FastDer
\ FinalMS
\ FlipSpin
\ Free_End
\ Free_End_Type
\ FreezeHydrogens
\ FrozenCore
\ FullScan
\ GSHessian
\ GeomStep
\ Guess
\ GuessMode
\ HessFlag
\ Hess_Filename
\ Hess_Internal
\ Hybrid_Hess
\ IFreqFlag
\ IRoot
\ InHess
\ InHessName
\ InLineW
\ Increment
\ InitHess
\ InvertConstraints
\ Irrep
\ JRoot
\ LaserE
\ LineW
\ Lines
\ MaxDim
\ MaxDisk
\ MaxIter
\ MaxTime
\ Method
\ MoInp
\ Mode
\ Modify_Internal
\ Mult
\ Mult_Medium
\ Mult_Total
\ NBOKeyList
\ NDav
\ NEB_End_XYZFile
\ NImages
\ NLb
\ NPoints
\ NProcs
\ NRoots
\ NRootsCISNat
\ NTOStates
\ NTOThresh
\ NewBlock
\ NewECP
\ NewGTO
\ Nuclei
\ OThresh
\ OptimizeHydrogens
\ Order
\ Ori
\ PTMethod
\ Partial_Hess
\ PreOpt
\ Pressure
\ Print
\ PrintLevel
\ PrintWF
\ Product
\ QM2Atoms
\ QM2CustomMethod
\ QMAtoms
\ RRIntens
\ RRSLineW
\ RRTCutDer
\ RRTCutJ
\ RTol
\ RangeSepEXX
\ RangeSepMu
\ RangeSepScal
\ ReCalc_Hess
\ ReducePrint
\ Refrac
\ Refs
\ ResetFreq
\ Rorder
\ Rotate
\ SCFMode
\ SF
\ SMD
\ SMDSolvent
\ STDA
\ SameFreq
\ Scale_Init_Displ
\ Scaling
\ SmearTemp
\ SpecRange
\ SpecRes
\ States
\ StepConstr
\ StepScaling
\ SurfaceType
\ SwitchStep
\ TCutFreq
\ TCutPNOSingles
\ TDA
\ TDip
\ TDipScaling
\ TPre
\ TPrint
\ TS
\ TSHessian
\ TS_Active_Atoms
\ TS_Active_Atoms_Factor
\ TS_Mode
\ TSel
\ Temp
\ Thresh
\ TrafoStep
\ Triplets
\ Trust
\ UFFreqErr
\ UF_Dele
\ Unit
\ Units
\ UnrelaxedPop
\ UseB
\ UseJ
\ UseQGradFit
\ UseQROs
\ VThresh
\ Weights
\ WriteHess
\ end
\ gTensor
\ nEl
\ nOrb
\ nThresh

syn match orcaInputBlockVariable /print *\[[^\[\]]*\]/ contained

hi def link orcaInputBlockMarker Keyword
hi def link orcaInputBlockVariable Function

" Blocks Within Input Blocks {{{
syn region orcaSubBlock matchgroup=orcaInputBlockMarker start=/^ *\(AddAuxCGTO\|AddAuxGTO\|AddAuxJGTO\|AddAuxJKGTO\|AddCABSGTO\|AddGTO\|Constraints\|Coords\|CustomFragInter\|DIIS\|DMRG\|Damp\|NewAuxCGTO\|NewAuxGTO\|NewAuxJGTO\|NewAuxJKGTO\|NewBlock\|NewCABSGTO\|NewECP\|NewGTO\|NewNCore\|PTSettings\|ROHFOP\|Refs\|Rel\|Rotate\|SOC\|SOSCFStart\|Scan\|Shift\|Stab\|TMag\|TRAH\|UpdateShift\)/ end=/^ *end$/ contained transparent

" }}}
"
" }}}
"

" Global Variables {{{
syn match orcaGlobalVariable /^%\(moinp\|maxcore\)/

hi def link orcaGlobalVariable Function
"
" }}}

" Coordinate blo
" ck {{{
syn region orcaCoordBlock matchgroup=orcaCoordBlockMarker start=/^\* *\(xyz\|int\|internal\|gzmt\) / end=/^\*$/ transparent contains=orcaCoordBlockStart,orcaCoordBlockEnd,ocraCoordBlockElement
syn keyword ocraCoordBlockElement H He Li Be B C N O F Ne Na Mg Al Si P S Cl Ar K Ca Sc Ti V Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr Rb Sr Y Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I Xe Cs Ba La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Hf Ta W Re Os Ir Pt Au Hg Tl Pb Bi Po At Rn Fr Ra Ac Th Pa U Np Pu Am Cm Bk Cf Es Fm Md No Lr Rf Db Sg Bh Hs Mt Ds Rg Cn Nh Fl Mc Lv Ts Og contained

hi def link orcaCoordBlockMarker Keyword
hi def link ocraCoordBlockElement String
" }}}

" Coordinate external file {{{
syn match orcaCoordExteranlFile /^\* \(xyz\|gzmt\)file/

hi def link orcaCoordExteranlFile Keyword
" }}}

" Keyword Line {{{
syn region orcaKeywordLine matchgroup=orcaKeywordLineMarker start=/^!/ end=/$/ transparent contains=orcaKeywordLineKeyword
hi def link orcaKeywordLineMarker Keyword

syn keyword orcaKeywordLineKeyword contained
  \ 3-21g
  \ 3-21gsp
  \ 4-22gsp
  \ 6-31++g(2d,2p)
  \ 6-31++g(2d,p)
  \ 6-31++g(2df,2p)
  \ 6-31++g(2df,2pd)
  \ 6-31++g(d,p)
  \ 6-31++g**
  \ 6-31+g(2d)
  \ 6-31+g(2d,2p)
  \ 6-31+g(2d,p)
  \ 6-31+g(2df)
  \ 6-31+g(2df,2p)
  \ 6-31+g(2df,2pd)
  \ 6-31+g(d)
  \ 6-31+g(d,p)
  \ 6-31+g*
  \ 6-31+g**
  \ 6-311++g(2d,2p)
  \ 6-311++g(2d,p)
  \ 6-311++g(2df,2p)
  \ 6-311++g(2df,2pd)
  \ 6-311++g(3df,3pd)
  \ 6-311++g(d,p)
  \ 6-311++g**
  \ 6-311+g(2d)
  \ 6-311+g(2d,2p)
  \ 6-311+g(2d,p)
  \ 6-311+g(2df)
  \ 6-311+g(2df,2p)
  \ 6-311+g(2df,2pd)
  \ 6-311+g(3df)
  \ 6-311+g(3df,2p)
  \ 6-311+g(3df,3pd)
  \ 6-311+g(d)
  \ 6-311+g(d,p)
  \ 6-311+g*
  \ 6-311+g**
  \ 6-311g
  \ 6-311g(2d)
  \ 6-311g(2d,2p)
  \ 6-311g(2d,p)
  \ 6-311g(2df)
  \ 6-311g(2df,2p)
  \ 6-311g(2df,2pd)
  \ 6-311g(3df)
  \ 6-311g(3df,3pd)
  \ 6-311g(d)
  \ 6-311g(d,p)
  \ 6-311g*
  \ 6-311g**
  \ 6-31g
  \ 6-31g(2d)
  \ 6-31g(2d,2p)
  \ 6-31g(2d,p)
  \ 6-31g(2df)
  \ 6-31g(2df,2p)
  \ 6-31g(2df,2pd)
  \ 6-31g(d)
  \ 6-31g(d,p)
  \ 6-31g*
  \ 6-31g**
  \ aim
  \ allowrhf
  \ allpop
  \ alpb(acetone)
  \ alpb(acetonitrile)
  \ alpb(aniline)
  \ alpb(benzaldehyde)
  \ alpb(benzene)
  \ alpb(ch2cl2)
  \ alpb(chcl3)
  \ alpb(cs2)
  \ alpb(dioxane)
  \ alpb(dmf)
  \ alpb(dmso)
  \ alpb(ethanol)
  \ alpb(ether)
  \ alpb(ethylacetate)
  \ alpb(furane)
  \ alpb(h2o)
  \ alpb(hexandecane)
  \ alpb(hexane)
  \ alpb(methanol)
  \ alpb(nitromethane)
  \ alpb(octanol(wet))
  \ alpb(octanol)
  \ alpb(phenol)
  \ alpb(thf)
  \ alpb(toluene)
  \ alpb(water)
  \ am1
  \ amfi
  \ amfi-a
  \ angs
  \ ano-pv5z
  \ ano-pv6z
  \ ano-pvdz
  \ ano-pvqz
  \ ano-pvtz
  \ ano-rcc-dzp
  \ ano-rcc-full
  \ ano-rcc-qzp
  \ ano-rcc-tzp
  \ apr-cc-pv(q+d)z
  \ aug-ano-pv5z
  \ aug-ano-pvdz
  \ aug-ano-pvqz
  \ aug-ano-pvtz
  \ aug-cc-pcv5z
  \ aug-cc-pcv6z
  \ aug-cc-pcvdz
  \ aug-cc-pcvqz
  \ aug-cc-pcvtz
  \ aug-cc-pv5z
  \ aug-cc-pv5z-dk
  \ aug-cc-pv5z-pp
  \ aug-cc-pv5z-pp-optri
  \ aug-cc-pv5z/c
  \ aug-cc-pv5z/jk
  \ aug-cc-pv6z
  \ aug-cc-pv6z/c
  \ aug-cc-pvdz
  \ aug-cc-pvdz-dk
  \ aug-cc-pvdz-pp
  \ aug-cc-pvdz-pp-optri
  \ aug-cc-pvdz-pp/c
  \ aug-cc-pvdz/c
  \ aug-cc-pvdz/jk
  \ aug-cc-pvqz
  \ aug-cc-pvqz-dk
  \ aug-cc-pvqz-pp
  \ aug-cc-pvqz-pp-optri
  \ aug-cc-pvqz-pp/c
  \ aug-cc-pvqz/c
  \ aug-cc-pvqz/jk
  \ aug-cc-pvtz
  \ aug-cc-pvtz-dk
  \ aug-cc-pvtz-j
  \ aug-cc-pvtz-pp
  \ aug-cc-pvtz-pp-optri
  \ aug-cc-pvtz-pp/c
  \ aug-cc-pvtz/c
  \ aug-cc-pvtz/jk
  \ aug-cc-pwcv5z
  \ aug-cc-pwcv5z-dk
  \ aug-cc-pwcv5z-pp
  \ aug-cc-pwcv5z-pp-optri
  \ aug-cc-pwcv5z/c
  \ aug-cc-pwcvdz
  \ aug-cc-pwcvdz-dk
  \ aug-cc-pwcvdz-pp
  \ aug-cc-pwcvdz-pp-optri
  \ aug-cc-pwcvdz-pp/c
  \ aug-cc-pwcvdz/c
  \ aug-cc-pwcvqz
  \ aug-cc-pwcvqz-dk
  \ aug-cc-pwcvqz-pp
  \ aug-cc-pwcvqz-pp-optri
  \ aug-cc-pwcvqz-pp/c
  \ aug-cc-pwcvqz/c
  \ aug-cc-pwcvtz
  \ aug-cc-pwcvtz-dk
  \ aug-cc-pwcvtz-pp
  \ aug-cc-pwcvtz-pp-optri
  \ aug-cc-pwcvtz-pp/c
  \ aug-cc-pwcvtz/c
  \ aug-pc-0
  \ aug-pc-1
  \ aug-pc-2
  \ aug-pc-3
  \ aug-pc-4
  \ aug-pcj-0
  \ aug-pcj-1
  \ aug-pcj-2
  \ aug-pcj-3
  \ aug-pcj-4
  \ aug-pcseg-0
  \ aug-pcseg-1
  \ aug-pcseg-2
  \ aug-pcseg-3
  \ aug-pcseg-4
  \ aug-pcsseg-0
  \ aug-pcsseg-1
  \ aug-pcsseg-2
  \ aug-pcsseg-3
  \ aug-pcsseg-4
  \ autoaux
  \ autostart
  \ b1lyp
  \ b1p
  \ b2gp-plyp
  \ b2k-plyp
  \ b2plyp
  \ b2t-plyp
  \ b3lyp
  \ b3lyp/g
  \ b3p
  \ b3pw
  \ b97-3c
  \ b97m-d3bj
  \ b97m-d4
  \ b97m-v
  \ bhandhlyp
  \ bhlyp
  \ blyp
  \ bohrs
  \ bp
  \ bp86
  \ bt-pno-eom-ccsd
  \ bt-pno-ih-fsmr-ccsd
  \ bt-pno-steom-ccsd
  \ c-pcm
  \ cam-b3lyp
  \ caspt2
  \ caspt2k
  \ cc-pcv5z
  \ cc-pcv6z
  \ cc-pcvdz
  \ cc-pcvdz-f12
  \ cc-pcvdz-f12-mp2fit
  \ cc-pcvdz-f12-optri
  \ cc-pcvqz
  \ cc-pcvqz-f12
  \ cc-pcvqz-f12-mp2fit
  \ cc-pcvqz-f12-optri
  \ cc-pcvtz
  \ cc-pcvtz-f12
  \ cc-pcvtz-f12-mp2fit
  \ cc-pcvtz-f12-optri
  \ cc-pv5(+d)z
  \ cc-pv5z
  \ cc-pv5z-dk
  \ cc-pv5z-pp
  \ cc-pv5z/c
  \ cc-pv5z/jk
  \ cc-pv6z
  \ cc-pv6z/c
  \ cc-pvd(+d)z
  \ cc-pvdz
  \ cc-pvdz-dk
  \ cc-pvdz-dk3
  \ cc-pvdz-f12
  \ cc-pvdz-f12-cabs
  \ cc-pvdz-f12-mp2fit
  \ cc-pvdz-f12-optri
  \ cc-pvdz-pp
  \ cc-pvdz-pp-f12
  \ cc-pvdz-pp-f12-mp2fit
  \ cc-pvdz-pp-f12-optri
  \ cc-pvdz-pp/c
  \ cc-pvdz/c
  \ cc-pvq(+d)z
  \ cc-pvqz
  \ cc-pvqz-dk
  \ cc-pvqz-dk3
  \ cc-pvqz-f12
  \ cc-pvqz-f12-cab2
  \ cc-pvqz-f12-mp2fit
  \ cc-pvqz-f12-optri
  \ cc-pvqz-pp
  \ cc-pvqz-pp-f12
  \ cc-pvqz-pp-f12-mp2fit
  \ cc-pvqz-pp-f12-optri
  \ cc-pvqz-pp/c
  \ cc-pvqz/c
  \ cc-pvqz/jk
  \ cc-pvt(+d)z
  \ cc-pvtz
  \ cc-pvtz-dk
  \ cc-pvtz-dk3
  \ cc-pvtz-f12
  \ cc-pvtz-f12-cab2
  \ cc-pvtz-f12-mp2fit
  \ cc-pvtz-f12-optri
  \ cc-pvtz-pp
  \ cc-pvtz-pp-f12
  \ cc-pvtz-pp-f12-mp2fit
  \ cc-pvtz-pp-f12-optri
  \ cc-pvtz-pp/c
  \ cc-pvtz/c
  \ cc-pvtz/jk
  \ cc-pwcv5z
  \ cc-pwcv5z-dk
  \ cc-pwcv5z-pp
  \ cc-pwcv5z/c
  \ cc-pwcvdz
  \ cc-pwcvdz-dk
  \ cc-pwcvdz-dk3
  \ cc-pwcvdz-pp
  \ cc-pwcvdz-pp/c
  \ cc-pwcvdz/c
  \ cc-pwcvqz
  \ cc-pwcvqz-dk
  \ cc-pwcvqz-dk3
  \ cc-pwcvqz-pp
  \ cc-pwcvqz-pp/c
  \ cc-pwcvqz/c
  \ cc-pwcvtz
  \ cc-pwcvtz-dk
  \ cc-pwcvtz-dk3
  \ cc-pwcvtz-pp
  \ cc-pwcvtz-pp/c
  \ cc-pwcvtz/c
  \ ccsd
  \ ccsd(t)
  \ ccsd(t)-f12d/ri
  \ ccsd(t)f12
  \ ccsd-f12
  \ ccsd-f12/ri
  \ ccsd-f12d/ri
  \ cdouble
  \ cepa/1
  \ cfloat
  \ cheapints
  \ cim
  \ ci-opt
  \ conv
  \ copt
  \ cpcm
  \ cpcm(acetone)
  \ cpcm(acetonitrile)
  \ cpcm(ammonia)
  \ cpcm(benzene)
  \ cpcm(ccl4)
  \ cpcm(ch2cl2)
  \ cpcm(chloroform)
  \ cpcm(cyclohexane)
  \ cpcm(dmf)
  \ cpcm(dmso)
  \ cpcm(ethanol)
  \ cpcm(hexane)
  \ cpcm(methanol)
  \ cpcm(octanol)
  \ cpcm(pyridine)
  \ cpcm(thf)
  \ cpcm(toluene)
  \ cpcm(water)
  \ cpf/1
  \ d2
  \ d3bj
  \ d3zero
  \ d4
  \ d95
  \ d95p
  \ damp
  \ dcd-cas(2)
  \ decontract
  \ decontractauxc
  \ decontractauxj
  \ decontractauxjk
  \ decontractbas
  \ def2-qzvp
  \ def2-qzvp/c
  \ def2-qzvpd
  \ def2-qzvpp
  \ def2-qzvpp/c
  \ def2-qzvppd
  \ def2-qzvppd/c
  \ def2-sv(p)
  \ def2-svp
  \ def2-svp/c
  \ def2-svpd
  \ def2-svpd/c
  \ def2-tzvp
  \ def2-tzvp(-f)
  \ def2-tzvp/c
  \ def2-tzvpd
  \ def2-tzvpd/c
  \ def2-tzvpp
  \ def2-tzvpp/c
  \ def2-tzvppd
  \ def2-tzvppd/c
  \ def2/j
  \ def2/jk
  \ def2/jksmall
  \ defgrid1
  \ defgrid2
  \ defgrid3
  \ dft
  \ dhf-qzvp
  \ dhf-qzvpp
  \ dhf-sv(p)
  \ dhf-svp
  \ dhf-tzvp
  \ dhf-tzvpp
  \ diis
  \ direct
  \ dkh
  \ dkh-def2-qzvpp
  \ dkh-def2-sv(p)
  \ dkh-def2-svp
  \ dkh-def2-tzvp
  \ dkh-def2-tzvp(-f)
  \ dkh-def2-tzvpp
  \ dkh2
  \ dlpno-b2plyp
  \ dlpno-ccsd
  \ dlpno-ccsd(t)
  \ dlpno-ccsd(t)-f12
  \ dlpno-ccsd(t)-f12/d
  \ dlpno-ccsd(t1)
  \ dlpno-ccsd(t1)-f12
  \ dlpno-ccsd(t1)-f12/d
  \ dlpno-ccsd-f12
  \ dlpno-ccsd-f12/d
  \ dlpno-dsd-pbeb95
  \ dlpno-hfc1
  \ dlpno-hfc2
  \ dlpno-mp2
  \ dlpno-mp2-f12
  \ dlpno-mp2-f12/d
  \ dlpno-nevpt2
  \ dlpno-scs-mp2
  \ dmrg
  \ double
  \ dsd-blyp
  \ dsd-pbeb95
  \ dsd-pbep86
  \ easyconv
  \ energy
  \ engrad
  \ eom-ccsd
  \ epr-ii
  \ epr-iii
  \ esd(abs)
  \ esd(fluor)
  \ esd(phosp)
  \ esd(rr)
  \ esdflag
  \ extrapolate(2/3,def2)
  \ extrapolate(2/3/4,def2)
  \ extrapolate(3)
  \ extremescf
  \ fic-acpf
  \ fic-aqcc
  \ fic-cepa0
  \ fic-ddci3
  \ fic-mrcc
  \ fic-mrci
  \ fic-nevpt2
  \ flat-neb-ts
  \ float
  \ fod
  \ forceconv
  \ fracocc
  \ freq
  \ frozencore
  \ gdiis-copt
  \ gdiis-opt
  \ gdiis-zopt
  \ gfn-ff
  \ gfn-xtb
  \ gfn2-xtb
  \ glyp
  \ hav(5+d)z
  \ hav(q+d)z
  \ hav(t+d)z
  \ hcore
  \ hf
  \ hf-3c
  \ hfs
  \ hueckel
  \ iglo-ii
  \ iglo-iii
  \ ignoreconv
  \ ih-fsmr-ccsd
  \ iora/ri
  \ ioramm/ri
  \ irc
  \ jul-cc-pv(d+d)z
  \ jul-cc-pv(q+d)z
  \ jul-cc-pv(t+d)z
  \ jun-cc-pv(d+d)z
  \ jun-cc-pv(q+d)z
  \ jun-cc-pv(t+d)z
  \ kdiis
  \ keepdens
  \ keepints
  \ lanl08
  \ lanl08(f)
  \ lanl2dz
  \ lanl2tz
  \ lanl2tz(f)
  \ largeprint
  \ lc-blyp
  \ lc-pbe
  \ lda
  \ led
  \ loewdin
  \ looseopt
  \ loosepno
  \ loosescf
  \ lpno-ccsd
  \ lpno-qcisd
  \ lsd
  \ lshift
  \ m06
  \ m062x
  \ m06l
  \ m6-31g
  \ m6-31g*
  \ ma-def2-QZVPP
  \ ma-def2-TZVP
  \ ma-def2-TZVP(-f)
  \ ma-def2-TZVPP
  \ ma-def2-qzvpp
  \ ma-def2-sv(p)
  \ ma-def2-svp
  \ ma-def2-tzvp
  \ ma-def2-tzvp(-f)
  \ ma-def2-tzvpp
  \ ma-dkh-def2-qzvpp
  \ ma-dkh-def2-sv(p)
  \ ma-dkh-def2-svp
  \ ma-dkh-def2-tzvp
  \ ma-dkh-def2-tzvp(-f)
  \ ma-dkh-def2-tzvpp
  \ ma-zora-def2-qzvpp
  \ ma-zora-def2-sv(p)
  \ ma-zora-def2-svp
  \ ma-zora-def2-tzvp
  \ ma-zora-def2-tzvp(-f)
  \ ma-zora-def2-tzvpp
  \ mass2016
  \ may-cc-pv(q+d)z
  \ may-cc-pv(t+d)z
  \ mayer
  \ md
  \ midi
  \ mini
  \ miniprint
  \ minis
  \ minix
  \ mndo
  \ moread
  \ mp2
  \ mp2-f12
  \ mp2-f12-ri
  \ mp2-f12d-ri
  \ mp2ri
  \ mp3
  \ mpw1lyp
  \ mpw1pw
  \ mpw2plyp
  \ mpwlyp
  \ mpwpw
  \ mracpf
  \ mraqcc
  \ mrci
  \ mrci+q
  \ mrddci1
  \ mrddci2
  \ mrddci3
  \ mulliken
  \ nbo
  \ ncpf/1
  \ nddo/1
  \ nddo/2
  \ neb-ts
  \ nevpt2
  \ nl
  \ nmr
  \ noautostart
  \ nocheapints
  \ nodamp
  \ nodecontractauxc
  \ nodecontractauxj
  \ nodecontractauxjk
  \ nodecontractbas
  \ nodiis
  \ nofinalgrid
  \ nofinalgridx
  \ nofrozencore
  \ noiter
  \ nokeepdens
  \ nokeepints
  \ noloewdin
  \ nolshift
  \ nomayer
  \ nomulliken
  \ nonbo
  \ nonpa
  \ nopop
  \ noprintmos
  \ nopropfile
  \ noreadints
  \ noreducedpop
  \ nori
  \ normalconv
  \ normalopt
  \ normalpno
  \ normalprint
  \ normalscf
  \ nosmear
  \ nososcf
  \ nosplit-ri-j
  \ notrah
  \ nousesym
  \ npa
  \ nrscf
  \ numfreq
  \ numgrad
  \ numnacme
  \ o3lyp
  \ olyp
  \ oo-ri-mp2
  \ oo-ri-scs-mp2
  \ opt
  \ optts
  \ pal4
  \ partridge-1
  \ partridge-2
  \ partridge-3
  \ partridge-4
  \ patom
  \ pbe
  \ pbe-qidh
  \ pbe0
  \ pbe0-dh
  \ pbeh-3c
  \ pc-0
  \ pc-1
  \ pc-2
  \ pc-3
  \ pc-4
  \ pcj-0
  \ pcj-1
  \ pcj-2
  \ pcj-3
  \ pcj-4
  \ pcseg-0
  \ pcseg-1
  \ pcseg-2
  \ pcseg-3
  \ pcseg-4
  \ pcsseg-0
  \ pcsseg-1
  \ pcsseg-2
  \ pcsseg-3
  \ pcsseg-4
  \ pdbfile
  \ pm3
  \ pmodel
  \ printbasis
  \ printgap
  \ printmos
  \ printthermochem
  \ pw1pw
  \ pw6b95
  \ pw91
  \ pwlda
  \ pwp
  \ pwpb95
  \ qcisd
  \ qcisd(t)
  \ qcisd(t)-f12
  \ qcisd(t)-f12/ri
  \ qcisd-f12
  \ qcisd-f12/ri
  \ qm/hf-3c
  \ qm/hf-3c/mm
  \ qm/pbeh-3c
  \ qm/pbeh/mm
  \ qm/qm2
  \ qm/qm2/mm
  \ qm/r2scan-3c
  \ qm/r2scan-3c/,,
  \ qm/xtb
  \ qm/xtb/mm
  \ qm/xtb1
  \ qm/xtb1/mm
  \ qm/xtb2
  \ qm/xtb2/mm
  \ qzvp
  \ qzvpp
  \ r2scan-3c
  \ readints
  \ reducedpop
  \ reduceprint
  \ revpbe
  \ revpbe0
  \ revpbe38
  \ rhf
  \ ri
  \ ri-b2plyp
  \ ri-caspt2
  \ ri-caspt2-k
  \ ri-dcd-cas(2)
  \ ri-dsd-pbeb95
  \ ri-j-xc
  \ ri-jk
  \ ri-mp2
  \ ri-nevpt2
  \ ri-scs-mp2
  \ ri-somf(1x)
  \ rijcosx
  \ rijdx
  \ rijk
  \ rks
  \ rohf
  \ roks
  \ rpbe
  \ rpw86pbe
  \ rsx-0dh
  \ rsx-qidh
  \ sapporo-dkh3-dzp-2012
  \ sapporo-dkh3-qzp-2012
  \ sapporo-dkh3-tzp-2012
  \ sapporo-dzp-2012
  \ sapporo-qzp-2012
  \ sapporo-tzp-2012
  \ sarc-dkh-tzvp
  \ sarc-dkh-tzvpp
  \ sarc-zora-tzvp
  \ sarc-zora-tzvpp
  \ sarc/j
  \ sarc2-dkh-qzvp
  \ sarc2-zora-qzvp
  \ saug-ano-pv5z
  \ saug-ano-pvdz
  \ saug-ano-pvqz
  \ saug-ano-pvtz
  \ sc-nevpt2
  \ scanfunc
  \ scants
  \ scfconv10
  \ scfconv6
  \ scfconv7
  \ scfconv8
  \ scfconv9
  \ scnl
  \ scs-b2gp-plyp21
  \ scs-mp2
  \ scs-mp3
  \ scs-pbe-qidh
  \ scs-rsx-qidh
  \ scs-wb2gp-plyp
  \ scs-wb88pp86
  \ scs-wpbepp86
  \ scs/sos-b2plyp21
  \ scs/sos-wb2plyp
  \ sloppyscf
  \ slowconv
  \ smallprint
  \ smear
  \ somf(1x)
  \ sorci
  \ sos-b2gp-plyp21
  \ sos-pbe-qidh
  \ sos-rsx-qidh
  \ sos-wb2gp-plyp
  \ sos-wb88pp86
  \ sos-wpbepp86
  \ soscf
  \ sp
  \ split-ri-j
  \ splitj
  \ steom-ccsd
  \ steom-dlpno-ccsd
  \ steomsoc
  \ sto-3g
  \ strongscf
  \ sv
  \ sv(p)
  \ sv/j
  \ svp
  \ tightopt
  \ tightpno
  \ tightscf
  \ tpss
  \ tpss0
  \ tpssh
  \ trah
  \ tzv
  \ tzv(p)
  \ tzvp
  \ tzvpp
  \ ucdouble
  \ ucfloat
  \ uco
  \ uhf
  \ uks
  \ uno
  \ usesym
  \ veff(-2x)-soc
  \ veff-soc
  \ veryslowconv
  \ verytightopt
  \ verytightscf
  \ vwn
  \ vwn3
  \ vwn5
  \ wB97
  \ wachters+f
  \ wb2gp-plyp
  \ wb2plyp
  \ wb88pp86
  \ wb97
  \ wb97m-d3bj
  \ wb97m-d4
  \ wb97m-v
  \ wb97x
  \ wb97x-2
  \ wb97x-d3
  \ wb97x-d3bj
  \ wb97x-d4
  \ wb97x-v
  \ wpbepp86
  \ x2c-qzvpall
  \ x2c-qzvpall-2c
  \ x2c-qzvpall-s
  \ x2c-qzvppall
  \ x2c-qzvppall-2c
  \ x2c-qzvppall-s
  \ x2c-sv(p)all
  \ x2c-sv(p)all-2c
  \ x2c-sv(p)all-s
  \ x2c-svpall
  \ x2c-svpall-2c
  \ x2c-svpall-s
  \ x2c-tzvpall
  \ x2c-tzvpall-2c
  \ x2c-tzvpall-s
  \ x2c-tzvppall
  \ x2c-tzvppall-2c
  \ x2c-tzvppall-s
  \ x2c/j
  \ x3lyp
  \ xlyp
  \ xtb1
  \ xtb2
  \ xtbff
  \ xyzfile
  \ zeff-zsoc
  \ zindo/1
  \ zindo/2
  \ zindo/s
  \ zoom-neb-ts
  \ zopt
  \ zora
  \ zora-def2-qzvpp
  \ zora-def2-sv(p)
  \ zora-def2-svp
  \ zora-def2-tzvp
  \ zora-def2-tzvp(-f)
  \ zora-def2-tzvpp
  \ zora/ri

hi def link orcaKeywordLineKeyword Function
" }}}
"

" Comments {{{
syn match orcaLineComment /#[^#]*$/
syn match orcaEmbeddedComment /#[^#]*#/

hi def link orcaComment Comment
hi def link orcaLineComment orcaComment
hi def link orcaEmbeddedComment orcaComment
" }}}

let b:current_syntax = "orca"
