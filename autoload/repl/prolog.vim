scriptencoding utf-8

function! repl#prolog#open_repl() abort
  " Setting up the file for the current file
  if &modified
    " Create new file temporary
    let l:module_file = tempname() . '.hs'
    call writefile(getline(1, expand('$')), l:module_file)
  else
    let l:module_file = expand('%:p')
  endif

  let l:repl      = repl#get_filetype_repl('prolog')
  let l:exec_name = split(l:repl['repl'], ' ')[0]
  if !executable(l:exec_name)
    call repl#echo_error(printf("You don't have repl: '%s'", l:exec_name))
    return
  endif
  let l:args = printf('%s %s %s', l:repl['repl'], l:repl['opt'], l:module_file)
  let l:buf  = term_start(l:args, { 'term_finish': 'close' })
endfunction
