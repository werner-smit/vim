let g:workspace_dir='/home/werner/workspace/'
function! LoadProject(name)
    let project_dir= g:workspace_dir . a:name . '/'
    exe 'cd ' . project_dir
    if findfile('.project', project_dir)
    	exe 'source ' . project_dir . '.project'
    endif
    echo 'Changing project dir to: ' . project_dir 
    if findfile('Session.vim', project_dir)
    	exe 'source '.project_dir.' Session.vim'
    	echo 'Loading Session.vim'
    endif
    set tags=./tags;~/
endfunction

function! SaveProject()
    let tablist = []
    for i in range(tabpagenr('$'))
	let fname = bufname(i+0+1)
	echo fname
	call extend(tablist, tabpagebuflist(i + 1))
    endfor
    echo tablist
endfunction

command! -bang -complete=buffer -nargs=? Load call LoadProject('<args>')
