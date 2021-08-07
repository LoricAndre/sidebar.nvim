if !has('nvim-0.5') || exists('g:loaded_sidebar_nvim') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

command! SidebarNvimOpen lua require'sidebar-nvim'.open()
command! SidebarNvimClose lua require'sidebar-nvim'.close()
command! SidebarNvimToggle lua require'sidebar-nvim'.toggle()
command! SidebarNvimUpdate lua require'sidebar-nvim'.update()
command! -nargs=1 SidebarNvimResize lua require'sidebar-nvim'.resize(<args>)

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_sidebar_nvim = 1