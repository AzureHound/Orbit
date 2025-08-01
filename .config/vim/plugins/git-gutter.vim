" Git Gutter
highlight clear SignColumn

augroup GitGutterCustom
  autocmd!
  autocmd ColorScheme * highlight clear SignColumn
augroup END

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '|'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_removed_above_and_below = '-'
let g:gitgutter_sign_modified_removed = '-'
