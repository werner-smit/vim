let g:workspace_dir='/home/werner/workspace/'
function! LoadProject(name)
    echo a:name
    if isdirectory(a:name)
	let g:project_dir= name
    else
	let g:project_dir= g:workspace_dir . a:name . '/'
    endif

    exe 'cd ' . g:project_dir
    if findfile('.project', g:project_dir)
    	exe 'source ' . g:project_dir . '.project'
    endif
    echo 'Changing project dir to: ' . g:project_dir 
    if findfile('Session.vim', g:project_dir)
    	exe 'source '.g:project_dir.' Session.vim'
    	echo 'Loading Session.vim'
    endif
    
    let project_file = g:project_dir.'.load_project'
    if filereadable(project_file)
    	for _file in readfile(project_file)
	    exe 'e '._file
	    echo 'Loading '._file
	endfor
    else
    	echo 'No .load_project file found in '.project_file
    endif
    set tags=./tags;~/
endfunction

function! SaveProject(...)
    let tablist = []
    echo tabpagebuflist()
    for i in tabpagebuflist()
	let fname = bufname(i+0)
	if filereadable(fname)
	    call add(tablist, fname)
	endif
    endfor

    if exists("a:1")
    	if isdirectory(a:1)
	    let save_file = a:1 . '.load_project'
	else
	    echo a:1 .' is not a valid directory'
	    return 
	endif
    elseif exists("g:project_dir")
        let save_file = g:project_dir . '.load_project'
    else
    	echo "No project loaded.."
    	return
    endif
    echo 'Saving to: '. save_file
    call writefile(tablist, save_file)
endfunction

function! s:ProjectList(ArgLead, CmdLine, CursorPos)
    let paths = filter(split(globpath(g:workspace_dir, '*'), '\n'), 'v:val=~? a:ArgLead')
    let names = [getcwd().'/']
    for path in paths
    	call add(names,split(path, '/')[-1:][0])
    endfor
    return names
endfunction

command! -bang -complete=customlist,s:ProjectList -nargs=? Save call SaveProject('<args>')
command! -bang -complete=customlist,s:ProjectList -nargs=? Load call LoadProject('<args>')
