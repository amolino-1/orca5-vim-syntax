if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-,/,%,+,*,(,),,
syn case ignore

" Input Block {{{
syn region orcaInputBlock matchgroup=orcaInputBlockMarker start=/^% *\(autoci\|basis\|casscf\|cipsi\|cim\|cis\|compound\|coords\|cpcm\|elprop\|eprnmr\|esd\|freq\|geom\|loc\|irc\|mcrpa\|md\|mdci\|method\|mp2\|mrcc\|mrci\|neb\|numgrad\|nbo\|output\|pal\|paras\|rel\|plots\|qmmm\|rocis\|rr\|scf\|symmetry\|tddft\|xtb\)/ end=/^end$/ contains=orcaLineComment,orcaEmbeddedComment,orcaInputBlockVariable,orcaBlockInsideInputBlock transparent

syn keyword orcaInputBlockVariable contained
\ activeatoms
\ approxaden
\ calc_hess
\ charge_medium
\ charge_total
\ density
\ diismaxeq
\ direction
\ directresetfreq
\ dodidplot
\ doht
\ donto
\ dorootwise
\ dosoc
\ dosolv
\ dsoc
\ dss
\ dostoresteom
\ dtensor
\ dtol
\ ecp
\ epsilon
\ esdflag
\ eshessian
\ finalms
\ flipspin
\ free_end
\ free_end_type
\ fullscan
\ gshessian
\ gtensor
\ guess
\ guessmode
\ hess_filename
\ hessflag
\ hybrid_hess
\ inhess
\ inhessname
\ inithess
\ inlinew
\ iroot
\ lines
\ linew
\ maxdim
\ maxdisk
\ maxiter
\ moinp
\ mult
\ mult_medium
\ mult_total
\ nbokeylist
\ ndav
\ neb_end_xyzfile
\ nel
\ newecp
\ newgto
\ nimages
\ nlb
\ norb
\ nprocs
\ nrootscisnat
\ nroots
\ ntostates
\ ntothresh
\ nuclei
\ optimizehydrogens
\ othresh
\ preopt
\ pressure
\ printlevel
\ printwf
\ product
\ ptmethod
\ qm2atoms
\ qm2custommethod
\ qmatoms
\ recalc_hess
\ refrac
\ scale_init_displ
\ scfmode
\ smd
\ smdsolvent
\ specrange
\ states
\ stda
\ tcutfreq
\ tcutpnosingles
\ tda
\ temp
\ trust
\ trafostep
\ ts_active_atoms
\ ts_active_atoms_factor
\ ts
\ tshessian
\ ts_mode
\ unit
\ usej
\ vthresh

syn match orcaInputBlockVariable /print *\[[^\[\]]*\]/ contained

hi def link orcaInputBlockMarker Keyword
hi def link orcaInputBlockVariable Function

" Block Inside Input Block {{{
syn region orcaBlockInsideInputBlock matchgroup=orcaInputBlockMarker start=/^ *\(constraints\|scan\)/ end=/^ *end$/ contained transparent

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
  \ allpop
  \ alpb(thf)
  \ alpb(toluene)
  \ aug-pcsseg-2
  \ aug-pcsseg-3
  \ aug-cc-pvdz
  \ aug-cc-pvdz/c
  \ aug-cc-pvdz/jk
  \ aug-cc-pvqz
  \ aug-cc-pvqz/c
  \ aug-cc-pvqz/jk
  \ aug-cc-pvtz
  \ aug-cc-pvtz/c
  \ aug-cc-pvtz/jk
  \ autoaux
  \ b2plyp
  \ b3lyp
  \ b97-3c
  \ b97m-v
  \ bhlyp
  \ bp
  \ bp86
  \ caspt2
  \ caspt2k
  \ cam-b3lyp
  \ cc-pvdz
  \ cc-pvdz/c
  \ cc-pvqz
  \ cc-pvqz/c
  \ cc-pvtz
  \ cc-pvtz/c
  \ conv
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
  \ d3bj
  \ d4
  \ def2-qzvp
  \ def2-qzvp/c
  \ def2-qzvpp
  \ def2-qzvppd
  \ def2-sv(p)
  \ def2-svp
  \ def2-svp/c
  \ def2-tzvp
  \ def2-tzvp(-f)
  \ def2-tzvp/c
  \ def2-tzvpp
  \ def2-tzvpp/c
  \ def2/j
  \ def2/jk
  \ defgrid1
  \ defgrid2
  \ defgrid3
  \ dlpno-b2plyp
  \ dlpno-ccsd
  \ dlpno-ccsd(t)
  \ dlpno-ccsd(t1)
  \ dlpno-dsd-pbeb95
  \ dlpno-mp2
  \ dlpno-nevpt2
  \ dlpno-scs-mp2
  \ dsd-pbeb95
  \ epr-ii
  \ epr-iii
  \ esd(abs)
  \ esd(fluor)
  \ esd(phosp)
  \ esd(rr)
  \ extrapolate(2/3,def2)
  \ extrapolate(2/3/4,def2)
  \ extrapolate(3)
  \ fic-nevpt2
  \ fod
  \ freq
  \ gfn-ff
  \ gfn-xtb
  \ gfn2-xtb
  \ hf
  \ hf-3c
  \ irc
  \ keepdens
  \ largeprint
  \ lc-pbe
  \ led
  \ loosepno
  \ m062x
  \ ma-def2-QZVPP
  \ ma-def2-TZVP
  \ ma-def2-TZVP(-f)
  \ ma-def2-TZVPP
  \ ma-def2-sv(p)
  \ ma-def2-svp
  \ moread
  \ nbo
  \ neb-ts
  \ nevpt2
  \ nl
  \ nmr
  \ nodamp
  \ nofinalgrid
  \ nofrozencore
  \ noiter
  \ nolshift
  \ nopop
  \ normalpno
  \ normalprint
  \ nososcf
  \ npa
  \ nrscf
  \ numfreq
  \ numgrad
  \ opt
  \ optts
  \ pal4
  \ patom
  \ pbe
  \ pbe0
  \ pbeh-3c
  \ pcj-2
  \ pcj-3
  \ pcsseg-2
  \ pcsseg-3
  \ pm3
  \ printbasis
  \ printgap
  \ printthermochem
  \ pw6b95
  \ pwpb95
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
  \ r2scan-3c
  \ reduceprint
  \ rhf
  \ ri
  \ ri-b2plyp
  \ ri-caspt2
  \ ri-caspt2-k
  \ ri-dsd-pbeb95
  \ ri-jk
  \ ri-mp2
  \ ri-nevpt2
  \ ri-scs-mp2
  \ ri-somf(1x)
  \ rijcosx
  \ rijdx
  \ rijk
  \ rks
  \ roks
  \ sarc/j
  \ scants
  \ slowconv
  \ smallprint
  \ sp
  \ steom-dlpno-ccsd
  \ sv
  \ sv/j
  \ svp
  \ tightopt
  \ tightpno
  \ tightscf
  \ tpss
  \ tpssh
  \ uco
  \ uhf
  \ uks
  \ uno
  \ verytightopt
  \ verytightscf
  \ wb97
  \ wb97m-d3bj
  \ wb97m-d4
  \ wb97m-v
  \ wb97x
  \ wb97x-d3
  \ wb97x-d3bj
  \ wb97x-d4
  \ wb97x-v
  \ xtb1
  \ xtb2
  \ xtbff
  \ xyzfile
  \ zoom-neb-ts
  \ zora
  \ zora-def2-tzvp

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
