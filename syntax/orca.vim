if exists("b:current_syntax")
  finish
endif

setlocal iskeyword+=-,/,%,+,*,(,),,
syn case ignore

" Input Block {{{
syn region orcaInputBlock matchgroup=orcaInputBlockMarker start=/^% *\(autoci\|basis\|casscf\|cipsi\|cim\|cis\|compound\|coords\|cpcm\|elprop\|eprnmr\|esd\|freq\|geom\|loc\|irc\|mcrpa\|md\|mdci\|method\|mp2\|mrcc\|mrci\|neb\|numgrad\|nbo\|output\|pal\|paras\|plots\|qmmm\|rel\|rocis\|rr\|scf\|symmetry\|tddft\|xtb\)/ end=/^end$/ contains=orcaLineComment,orcaEmbeddedComment,orcaInputBlockVariable,orcaBlockInsideInputBlock transparent

syn keyword orcaInputBlockVariable contained
\ activeatoms
\ approxaden
\ calc_hess
\ centraldiff
\ charge_medium
\ charge_total
\ convder
\ coorsys
\ dele
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
\ dostoresteom
\ dsoc
\ dss
\ dtensor
\ dtol
\ ecp
\ epsilon
\ esdflag
\ eshessian
\ fastder
\ finalms
\ flipspin
\ free_end
\ free_end_type
\ fullscan
\ geomstep
\ gshessian
\ gtensor
\ guess
\ guessmode
\ hess_filename
\ hessflag
\ hybrid_hess
\ ifreqflag
\ inhess
\ inhessname
\ inithess
\ inlinew
\ iroot
\ lasere
\ lines
\ linew
\ maxdim
\ maxdisk
\ maxiter
\ maxtime
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
\ npoints
\ nprocs
\ nroots
\ nrootscisnat
\ ntostates
\ ntothresh
\ nuclei
\ optimizehydrogens
\ othresh
\ preopt
\ pressure
\ printens
\ printlevel
\ printwf
\ product
\ ptmethod
\ qm2atoms
\ qm2custommethod
\ qmatoms
\ recalc_hess
\ refrac
\ rorder
\ rrintens
\ rrslinew
\ rrtcutder
\ rrtcutj
\ samefreq
\ scale_init_displ
\ scaling
\ scfmode
\ smd
\ smdsolvent
\ specrange
\ specres
\ states
\ stda
\ stepconstr
\ stepscaling
\ tcutfreq
\ tcutpnosingles
\ tda
\ tdip
\ tdipscaling
\ temp
\ trafostep
\ trust
\ ts
\ ts_active_atoms
\ ts_active_atoms_factor
\ ts_mode
\ tshessian
\ uf_dele
\ uffreqerr
\ unit
\ useb
\ usej
\ vthresh
\ writehess

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
  \ 3-21g
  \ 3-21gsp
  \ 4-22gsp
  \ 6-31++g**
  \ 6-31++g(2d,2p)
  \ 6-31++g(2d,p)
  \ 6-31++g(2df,2p)
  \ 6-31++g(2df,2pd)
  \ 6-31++g(d,p)
  \ 6-31+g*
  \ 6-31+g**
  \ 6-31+g(2d)
  \ 6-31+g(2d,2p)
  \ 6-31+g(2d,p)
  \ 6-31+g(2df)
  \ 6-31+g(2df,2p)
  \ 6-31+g(2df,2pd)
  \ 6-31+g(d)
  \ 6-31+g(d,p)
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
  \ 6-311g
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
  \ allpop
  \ alpb(thf)
  \ alpb(toluene)
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
  \ bp
  \ bp86
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
  \ d2
  \ d3bj
  \ d3zero
  \ d4
  \ d95
  \ d95p
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
  \ dhf-qzvp
  \ dhf-qzvpp
  \ dhf-sv(p)
  \ dhf-svp
  \ dhf-tzvp
  \ dhf-tzvpp
  \ dkh-def2-qzvpp
  \ dkh-def2-sv(p)
  \ dkh-def2-svp
  \ dkh-def2-tzvp
  \ dkh-def2-tzvp(-f)
  \ dkh-def2-tzvpp
  \ dlpno-b2plyp
  \ dlpno-ccsd
  \ dlpno-ccsd(t)
  \ dlpno-ccsd(t1)
  \ dlpno-dsd-pbeb95
  \ dlpno-mp2
  \ dlpno-nevpt2
  \ dlpno-scs-mp2
  \ dsd-blyp
  \ dsd-pbeb95
  \ dsd-pbep86
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
  \ fic-nevpt2
  \ fod
  \ freq
  \ gfn-ff
  \ gfn-xtb
  \ gfn2-xtb
  \ glyp
  \ hav(5+d)z
  \ hav(q+d)z
  \ hav(t+d)z
  \ hf
  \ hf-3c
  \ hfs
  \ iglo-ii
  \ iglo-iii
  \ irc
  \ jul-cc-pv(d+d)z
  \ jul-cc-pv(q+d)z
  \ jul-cc-pv(t+d)z
  \ jun-cc-pv(d+d)z
  \ jun-cc-pv(q+d)z
  \ jun-cc-pv(t+d)z
  \ keepdens
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
  \ loosepno
  \ lsd
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
  \ may-cc-pv(q+d)z
  \ may-cc-pv(t+d)z
  \ midi
  \ mini
  \ minis
  \ minix
  \ moread
  \ mpw1lyp
  \ mpw1pw
  \ mpw2plyp
  \ mpwlyp
  \ mpwpw
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
  \ o3lyp
  \ olyp
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
  \ pm3
  \ printbasis
  \ printgap
  \ printthermochem
  \ pw1pw
  \ pw6b95
  \ pw91
  \ pwlda
  \ pwp
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
  \ qzvp
  \ qzvpp
  \ r2scan-3c
  \ reduceprint
  \ revpbe
  \ revpbe0
  \ revpbe38
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
  \ scanfunc
  \ scants
  \ scnl
  \ scs-b2gp-plyp21
  \ scs-pbe-qidh
  \ scs-rsx-qidh
  \ scs-wb2gp-plyp
  \ scs-wb88pp86
  \ scs-wpbepp86
  \ scs/sos-b2plyp21
  \ scs/sos-wb2plyp
  \ slowconv
  \ smallprint
  \ sos-b2gp-plyp21
  \ sos-pbe-qidh
  \ sos-rsx-qidh
  \ sos-wb2gp-plyp
  \ sos-wb88pp86
  \ sos-wpbepp86
  \ sp
  \ steom-dlpno-ccsd
  \ sto-3g
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
  \ tzv
  \ tzv(p)
  \ tzvp
  \ tzvpp
  \ uco
  \ uhf
  \ uks
  \ uno
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
  \ zoom-neb-ts
  \ zora
  \ zora-def2-qzvpp
  \ zora-def2-sv(p)
  \ zora-def2-svp
  \ zora-def2-tzvp
  \ zora-def2-tzvp(-f)
  \ zora-def2-tzvpp

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
