if exists("b:did_indent")
  finish
endif

setlocal autoindent
setlocal indentexpr=GetOrcaIndent()
setlocal indentkeys=o,O,!^F,0=end

function! GetOrcaIndent()
    let plnum = prevnonblank(v:lnum - 1)
    if getline(plnum) =~ '^% *\(autoci\|basis\|casscf\|cipsi\|cim\|cis\|compound\|coords\|cpcm\|elprop\|eprnmr\|esd\|freq\|geom\|irc\|loc\|mcrpa\|md\|mdci\|method\|moinp\|mp2\|mrcc\|mrci\|neb\|numgrad\|nbo\|output\|pal\|paras\|rel\|plots\|qmmm\|rocis\|rr\|scf\|symmetry\|tddft\|xtb\)'
        return indent(plnum) + &l:shiftwidth
    elseif getline(plnum) =~ '\(constraints\|scan\)'
        return indent(plnum) + &l:shiftwidth
    elseif getline(v:lnum) =~# 'end'
        return indent(plnum) - &l:shiftwidth
    else
        return indent(plnum)
    endif
endfunction

let  b:did_indent = 1
