let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
inoremap <silent> <Plug>(table-mode-tableize) |:call tablemode#TableizeInsertMode()a
inoremap <C-U> =imagine#Undo()
inoremap <silent> <C-N> =blink#BlinkToEditPoint("w", 0)
inoremap <silent> <C-P> =blink#BlinkToEditPoint("wb", 0)
imap <C-Y>m <Plug>(emmet-merge-lines)
inoremap <Plug>(emmet-merge-lines) =emmet#util#closePopup()=emmet#mergeLines()
imap <C-Y>A <Plug>(emmet-anchorize-summary)
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
imap <C-Y>a <Plug>(emmet-anchorize-url)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
imap <C-Y>k <Plug>(emmet-remove-tag)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
imap <C-Y>j <Plug>(emmet-split-join-tag)
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
imap <C-Y>/ <Plug>(emmet-toggle-comment)
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
imap <C-Y>I <Plug>(emmet-image-encode)
inoremap <Plug>(emmet-image-encode) =emmet#util#closePopup()=emmet#imageEncode()
imap <C-Y>i <Plug>(emmet-image-size)
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
imap <C-Y>N <Plug>(emmet-move-prev)
inoremap <Plug>(emmet-move-prev) =emmet#util#closePopup()=emmet#moveNextPrev(1)
imap <C-Y>n <Plug>(emmet-move-next)
inoremap <Plug>(emmet-move-next) =emmet#util#closePopup()=emmet#moveNextPrev(0)
imap <C-Y>D <Plug>(emmet-balance-tag-outword)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
imap <C-Y>d <Plug>(emmet-balance-tag-inward)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
imap <C-Y>u <Plug>(emmet-update-tag)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
imap <C-Y>; <Plug>(emmet-expand-word)
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
imap <C-Y>, <Plug>(emmet-expand-abbr)
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
cnoremap <C-T> 
cnoremap <C-N> <S-Right>
cnoremap <C-P> <S-Left>
cnoremap <C-D> <Del>
inoremap <C-CR> :s/[^;]\zs$/;/eo
inoremap <S-CR> :s/[^,]\zs$/,/eo
inoremap <C-O> o
inoremap <C-E> A
inoremap <C-B> I
inoremap <C-D> <Del>
inoremap <C-W> 
inoremap <C-G>   <Left>
inoremap <C-L> <Right>
inoremap <C-K> <Up>
inoremap <C-J> <Down>
inoremap <C-T> =InsertAboveWord()
cnoremap <expr> <C-H> has("gui_running") ? "\\:promptrepl\" : "\"
inoremap <C-H> <Left>
cnoremap <expr> <C-F> has("gui_running") ? "\\:promptfind\" : "\\/"
inoremap <C-F> =imagine#ToggleEmmet()
cnoremap <C-F4> c
inoremap <C-F4> c
cnoremap <C-Tab> w
inoremap <C-Tab> w
cnoremap <C-A> <BS>
inoremap <C-A> <BS>
cnoremap <M-Space> :simalt ~
inoremap <M-Space> :simalt ~
inoremap <C-Z> u
inoremap <C-S> :updategi
imap <S-Insert> 
cmap <S-Insert> +
cmap <C-V> +
xnoremap  ggVG
snoremap  gggHG
onoremap  gggHG
nnoremap  ggVG
vnoremap  "+y
nnoremap  
nnoremap  :ProjectSearchFiles
vnoremap <expr>  has("gui_running") ? ":promptfind\" : "/"
nnoremap  :ProjectFindInFiles
onoremap <expr>  has("gui_running") ? ":promptfind\" : "/"
nnoremap  :sil let g:list_type = 'quickfix':sil call RemapCtrlNP():execute ":vimgrep /\\v<".escape(expand("<cword>"), '$').">/gj %":sil! call MoveInList(1)
nnoremap  h
nnoremap 	 za
nnoremap <NL> j
nnoremap  k
nnoremap  l
nnoremap  :update:e $
nnoremap  :CtrlPMRU
noremap  
nnoremap  :update
vnoremap  :update
onoremap  :update
vnoremap  :Tabularize /\v/<Left>
nnoremap  :update:e #
onoremap  :Tabularize /\v/<Left>
xnoremap <silent>  :call multiple_cursors#new("v", 0)
nnoremap <silent>  :call multiple_cursors#new("n", 1)
nnoremap  "*p
omap  "+gP
nnoremap  :ProjectList
vnoremap  "+x
vnoremap  
vmap c <Plug>(emmet-code-pretty)
nmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap I <Plug>(emmet-image-encode)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
nnoremap  :let @*=expand('%:p')
onoremap  
noremap  u
nnoremap  :call NumberToggle()
noremap  @:
vnoremap   :
nnoremap   :
nnoremap "*m :silent call CopyMessages()
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
noremap '; `^
noremap '. `.
noremap '' ``
noremap ' `
nnoremap ,h :execute ":help ".expand("<cword>")
vnoremap ,m :call MarkerWithComment()ka
noremap <expr> ,_R ReplaceCmd('visual project')
vmap ,R `<v`>"zy,_R
noremap <expr> ,_r ReplaceCmd('visual file')
vmap ,r `<v`>"zy,_r
nnoremap <expr> ,R ReplaceCmd('project')  
nnoremap <expr> ,r ReplaceCmd('file') 
noremap ,d :call ToggleSet('d')
noremap ,D :DiffOrig
nnoremap ,df :call ShowFoldLevel() 
nnoremap ,ds :call ShowSyntax()
xmap ,T <Plug>(table-mode-tableize-delimiter)
xmap ,tt <Plug>(table-mode-tableize)
nmap ,tt <Plug>(table-mode-tableize)
nnoremap <silent> ,tm :call tablemode#Toggle()
noremap ,a :call imagine#AddFavouredWord()
nnoremap ,p :call Preview()
nnoremap ,n :silent n
vnoremap ,* `<i**`>lla**
nnoremap ,* viw`<i*`>la*
vnoremap ,  `<i `>la 
nnoremap ,  viw`<i `>la 
vnoremap ,( `<i(`>la)
nnoremap ,( viw`<i(`>la)
vnoremap ,{ `<i{`>la}
nnoremap ,{ viw`<i{`>la}
vnoremap ,[ `<i[`>la]
nnoremap ,[ viw`<i[`>la]
vnoremap ,` `<i``>la`
nnoremap ,` viw`<i``>la`
vnoremap ,' `<i'`>la'
nnoremap ,' viw`<i'`>la'
vnoremap ," `<i"`>la"
nnoremap ," viw`<i"`>la"
nnoremap ,L $
nnoremap ,H ^
noremap ,\ :s/\//\\/ge
noremap ,/ :s/\\/\//ge
nnoremap / :let b:move_type = 's'/
nnoremap 2T :let b:move_type = 'f'2T
nnoremap 2t :let b:move_type = 'f'2t
nnoremap 2F :let b:move_type = 'f'2F
nnoremap 2f :let b:move_type = 'f'2f
nnoremap 3T :let b:move_type = 'f'3T
nnoremap 3t :let b:move_type = 'f'3t
nnoremap 3F :let b:move_type = 'f'3F
nnoremap 3f :let b:move_type = 'f'3f
nnoremap ? :let b:move_type = 's'?
cnoremap   :simalt ~
inoremap   :simalt ~
nnoremap F :let b:move_type = 'f'F
vnoremap H ^
nnoremap H :tabp
vnoremap J 
nnoremap J 
vnoremap K 
nnoremap K 
vnoremap L $
nnoremap L :tabn
noremap <silent> N :call RepeatMoveOrSearch(0)
nnoremap Q :qa
vnoremap T "*y:let g:tmp=&ft:tabnew $ft"*p:let &ft=g:tmp:write
nnoremap T :let b:move_type = 'f'T
nnoremap U vU
map Y y$
nnoremap [[ :let b:move_type = ']c'[c
nnoremap [f :let b:move_type = 'zk'zk
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
vnoremap \f :call RangeJsBeautify()
nnoremap \s :Gstatus
noremap \` :s/'/`/ge
nnoremap ]] :let b:move_type = ']c']c
nnoremap ]f :let b:move_type = 'zj'zj
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
onoremap al< :normal! F>va<
onoremap an< :normal! f<va<
onoremap al{ :normal! F}va{
onoremap an{ :normal! f{va{
onoremap al[ :normal! F]va[
onoremap an[ :normal! f[va[
onoremap al( :normal! F)va(
onoremap an( :normal! f(va(
nnoremap f :let b:move_type = 'f'f
nnoremap gf :call OpenCfile()
nnoremap g/ :call SearchCurrentWord()
nnoremap ged :diffsplit 
noremap gDp :Dp 
noremap gDe :De 
noremap <silent> gC :call CommentBySubstitue_extra()
noremap <silent> gc :call CommentBySubstitue()
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> go :silent call run#Run()
nnoremap gec :!python3 /Users/apple/Library/ApplicationSupport/iTerm2/Scripts/new-tab.py "%:p:h"
nnoremap get :!~/repository/ctags-5.8/ctags %
nnoremap gr :call Restart()
nnoremap gI 	 
noremap gs :update:Search 
nnoremap gwv :update:vs %
nnoremap gwc :Calendar
nnoremap gwo :e #<
nnoremap gly :Yanks
nnoremap gll :call QueryColor('')<Left><Left>
nnoremap glp :PluginList
nnoremap gls :scriptnames
nnoremap glr :registers
nnoremap glo :oldfiles
nnoremap glM :marks
nnoremap glm :messages
nnoremap glj :jumps
nnoremap glh :history
nnoremap glc :changes
nnoremap glb :buffers
nnoremap ges :source $r
nnoremap gep :wa:silent !htp % %.pdf
nnoremap gev :vimgrep /\v<>/g <Left><Left><Left><Left>
nmap gR :let &ft = &ft
nnoremap g' :update:e #
nnoremap g3 :3wincmd w
nnoremap g2 :2wincmd w
nnoremap g1 :1wincmd w
nnoremap gH :helpgrep 
nnoremap gh :h 
nnoremap gat a=strftime('%Y %m %d')"
nnoremap ge yy:execute @"
vnoremap gt y:execute 'terminal '.@"
nnoremap gt yy:execute 'terminal '.@"
nnoremap gQ :wqa
nnoremap gq :update:q
onoremap il@ :execute "normal! ?\\w*@\\w*\\.\\w*\r:nohlsearch\rvE"
onoremap in@ :execute "normal! /\\w*@\\w*\\.\\w*\r:nohlsearch\rvE"
vnoremap i> :normal! T>vt<
onoremap i> :normal! T>vt<
onoremap il< :normal! F>vi<
onoremap in< :normal! f<vi<
onoremap il{ :normal! F}vi{
onoremap in{ :normal! f{vi{
onoremap il[ :normal! F]vi[
onoremap in[ :normal! f[vi[
onoremap il( :normal! F)vi(
onoremap in( :normal! f(vi(
noremap <silent> n :call RepeatMoveOrSearch(1)
nnoremap q :call Quit()
nnoremap s 
nnoremap t :let b:move_type = 'f't
vnoremap y y`]
nnoremap zm zM
nnoremap zr zR
nnoremap zb ?-
nnoremap ze /-
vnoremap <C-T> :Tabularize /\v/<Left>
vnoremap <expr> <C-F> has("gui_running") ? ":promptfind\" : "/"
nnoremap <C-F4> c
nnoremap <C-Tab> w
vnoremap <C-Y> 
nnoremap <C-S> :update
nmap <S-Insert> "+gP
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
nnoremap <C-G> :sil let g:list_type = 'quickfix':sil call RemapCtrlNP():execute ":vimgrep /\\v<".escape(expand("<cword>"), '$').">/gj %":sil! call MoveInList(1)
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v')m'gv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xnoremap <silent> <C-U> :call multiple_cursors#new("v", 0)
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <silent> <Plug>(table-mode-sort) :call tablemode#spreadsheet#Sort('')
nnoremap <silent> <Plug>(table-mode-eval-formula) :call tablemode#spreadsheet#formula#EvaluateFormulaLine()
nnoremap <silent> <Plug>(table-mode-add-formula) :call tablemode#spreadsheet#formula#Add()
nnoremap <silent> <Plug>(table-mode-delete-column) :call tablemode#spreadsheet#DeleteColumn()
nnoremap <silent> <Plug>(table-mode-delete-row) :call tablemode#spreadsheet#DeleteRow()
xnoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
xnoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
onoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
onoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
nnoremap <silent> <Plug>(table-mode-motion-right) :call tablemode#spreadsheet#cell#Motion('l')
nnoremap <silent> <Plug>(table-mode-motion-left) :call tablemode#spreadsheet#cell#Motion('h')
nnoremap <silent> <Plug>(table-mode-motion-down) :call tablemode#spreadsheet#cell#Motion('j')
nnoremap <silent> <Plug>(table-mode-motion-up) :call tablemode#spreadsheet#cell#Motion('k')
nnoremap <silent> <Plug>(table-mode-realign) :call tablemode#table#Realign('.')
xnoremap <silent> <Plug>(table-mode-tableize-delimiter) :call tablemode#TableizeByDelimiter()
xnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>(table-mode-tableize) :Tableize
vmap <C-Y>c <Plug>(emmet-code-pretty)
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
nmap <C-Y>m <Plug>(emmet-merge-lines)
nnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nmap <C-Y>A <Plug>(emmet-anchorize-summary)
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nmap <C-Y>a <Plug>(emmet-anchorize-url)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nmap <C-Y>k <Plug>(emmet-remove-tag)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nmap <C-Y>j <Plug>(emmet-split-join-tag)
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nmap <C-Y>/ <Plug>(emmet-toggle-comment)
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nmap <C-Y>I <Plug>(emmet-image-encode)
nnoremap <Plug>(emmet-image-encode) :call emmet#imageEncode()
nmap <C-Y>i <Plug>(emmet-image-size)
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nmap <C-Y>N <Plug>(emmet-move-prev)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nmap <C-Y>n <Plug>(emmet-move-next)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vmap <C-Y>D <Plug>(emmet-balance-tag-outword)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nmap <C-Y>D <Plug>(emmet-balance-tag-outword)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vmap <C-Y>d <Plug>(emmet-balance-tag-inward)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nmap <C-Y>d <Plug>(emmet-balance-tag-inward)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nmap <C-Y>u <Plug>(emmet-update-tag)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nmap <C-Y>; <Plug>(emmet-expand-word)
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vmap <C-Y>, <Plug>(emmet-expand-abbr)
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nmap <C-Y>, <Plug>(emmet-expand-abbr)
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
nnoremap <C-F> :ProjectFindInFiles
nnoremap <C-E> :ProjectSearchFiles
nnoremap <C-W> :ProjectList
nnoremap <C-L> l
nnoremap <C-K> k
nnoremap <C-J> j
nnoremap <C-T> :update:e #
nnoremap <C-P> :CtrlPMRU
nnoremap <C-0> g+
nnoremap <C-9> g-
onoremap <C-T> :Tabularize /\v/<Left>
nnoremap <C-Bslash> :call NumberToggle()
nnoremap <silent> <C-U> :call multiple_cursors#new("n", 1)
nnoremap <C-D> 
nnoremap <S-CR> :sp $
noremap <C-_> @:
nnoremap <Down> j
nnoremap <Up> k
nnoremap <Right> l
nnoremap <Left> h
vnoremap <Right> >
vnoremap <Left> <
nnoremap <C-V> "*p
nnoremap <C-Y> :let @*=expand('%:p')
nnoremap <C-H> h
onoremap <expr> <C-F> has("gui_running") ? ":promptfind\" : "/"
onoremap <C-F4> c
vnoremap <C-F4> c
onoremap <C-Tab> w
vnoremap <C-Tab> w
xnoremap <C-A> ggVG
snoremap <C-A> gggHG
onoremap <C-A> gggHG
nnoremap <C-A> ggVG
noremap <M-Space> :simalt ~
onoremap <C-Y> 
noremap <C-Z> u
vnoremap <C-S> :update
onoremap <C-S> :update
noremap <C-Q> 
vmap <S-Insert> 
omap <S-Insert> "+gP
omap <C-V> "+gP
vnoremap <C-Insert> "+y
vnoremap <C-C> "+y
vnoremap <S-Del> "+x
vnoremap <C-X> "+x
vnoremap <BS> d
cnoremap  <BS>
inoremap  <BS>
inoremap  I
cnoremap  <Del>
inoremap  <Del>
inoremap  A
cnoremap <expr>  has("gui_running") ? "\\:promptfind\" : "\\/"
inoremap  =imagine#ToggleEmmet()
inoremap    <Left>
cnoremap <expr>  has("gui_running") ? "\\:promptrepl\" : "\"
inoremap  <Left>
inoremap <silent> 	 u=imagine#TabRemap()=imagine#Move()
inoremap <NL> <Down>
inoremap  <Up>
inoremap  <Right>
inoremap <silent>  =blink#BlinkToEditPoint("w", 0)
cnoremap  <S-Right>
inoremap  o
inoremap <silent>  =blink#BlinkToEditPoint("wb", 0)
cnoremap  <S-Left>
inoremap  :updategi
cnoremap  
inoremap  =InsertAboveWord()
inoremap  =imagine#Undo()
cmap  +
inoremap  
imap m <Plug>(emmet-merge-lines)
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap I <Plug>(emmet-image-encode)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
inoremap  u
inoremap > =CompleteTag()
noremap   :simalt ~
let &cpo=s:cpo_save
unlet s:cpo_save
set autochdir
set autoindent
set autoread
set backspace=eol,start,indent
set belloff=all
set cindent
set cinkeys=o,O,e
set clipboard=unnamed,unnamedplus
set cmdheight=2
set complete=.,w,b,u
set expandtab
set fileencodings=ucs-bom,utf-8,cp936,latin-1
set fillchars=
set foldlevelstart=6
set grepprg=grep\ -n
set guicursor=a:blinkon0
set guifont=Fira\ Code:h15
set guioptions=eg
set guitablabel=%M%t
set helplang=en
set ignorecase
set noimdisable
set incsearch
set indentkeys=o,O,e
set keymodel=startsel,stopsel
set langmenu=none
set laststatus=2
set listchars=eol:$,trail:-,tab:>-
set maxmempattern=5000
set mouse=a
set mousemodel=popup
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set report=0
set runtimepath=
set runtimepath+=~/repository/dotFile/vimfiles/plugins/nginx.vim
set runtimepath+=~/repository/dotFile/vimfiles/plugins/emmet-vim
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-project
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-preview
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-blink
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-run
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-matchtag
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-svelte-theme
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-vue-plugin
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-svelte-plugin
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-jsx-plugin
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-filemap
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-imagine
set runtimepath+=~/repository/dotFile/vimfiles/plugins/ack.vim
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-table-mode
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-fugitive
set runtimepath+=~/repository/dotFile/vimfiles/plugins/ctrlp.vim
set runtimepath+=~/repository/dotFile/vimfiles/plugins/fern.vim
set runtimepath+=~/repository/dotFile/vimfiles/plugins/fern-hijack.vim
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-indent-object
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-multiple-cursors
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-css-color
set runtimepath+=~/repository/dotFile/vimfiles/plugins/tabular
set runtimepath+=~/.vim
set runtimepath+=/Applications/MacVim.app/Contents/Resources/vim/vimfiles
set runtimepath+=/Applications/MacVim.app/Contents/Resources/vim/runtime
set runtimepath+=/Applications/MacVim.app/Contents/Resources/vim/runtime/pack/dist/opt/matchit
set runtimepath+=/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after
set runtimepath+=~/.vim/after
set runtimepath+=~/vimruntime
set runtimepath+=~/repository/dotFile/vimfiles
set runtimepath+=~/repository/dotFile/vimfiles/plugins/tabular/after
set runtimepath+=~/repository/dotFile/vimfiles/plugins/vim-css-color/after
set scrolloff=6
set selectmode=mouse,key
set shiftwidth=2
set shortmess=atIoO
set showcmd
set showmatch
set smarttab
set splitbelow
set splitright
set statusline=%{GetFileInfo()}%<%m%r%h%w\ %y\ %=%{GetProjectInfo()}[%l][%3p%%/%L]
set noswapfile
set synmaxcol=500
set tabstop=2
set termencoding=utf-8
set undodir=~/files/undofile
set undofile
set whichwrap=b,s,<,>,h,l
set wildignore=*\\tmp\\*,*.swp,*.zip,*.exe,*.pdb,*.pyc
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/repository/dotFile/vimrcs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/repository/dotFile/vimfiles/plugins/vim-project/autoload/project.vim
edit ~/repository/dotFile/vimrcs/project.vim
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*end\(f\%[unction]\|def\)\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*\(fu\%[nction]\|def\)\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*end\(f\%[unction]\|def\)\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*end\(f\%[unction]\|def\)\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*\(fu\%[nction]\|def\)\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*\(fu\%[nction]\|def\)\>', "W")
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> ' ''<Left>
inoremap <buffer> ( ()<Left>
inoremap <buffer> <expr> = InsertEqual()
inoremap <buffer> [ []<Left>
inoremap <buffer> ` ``<Left>
inoremap <buffer> { {}<Left>
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,sO:#\ -,mO:#\ \ ,eO:##,:\",b:#
setlocal commentstring=\"%s
setlocal complete=.,w,b,u
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
set nofoldenable
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=6
setlocal foldmarker={{{,}}}
set foldmethod=indent
setlocal foldmethod=indent
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=cql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=o,O,e,=end,=},=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal spelloptions=
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=500
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
2
normal! zo
2
normal! zo
let s:l = 4 - ((3 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 023|
tabnext 1
badd +192 ~/repository/dotFile/vimrcs/mapping.vim
badd +152 ~/repository/dotFile/vimfiles/plugins/vim-test/start.sh
badd +7 ~/repository/dotFile/vimfiles/plugins/vim-project/autoload/project.vim
badd +57 ~/repository/dotFile/vimfiles/plugins/vim-project/README.md
badd +1 ~/repository/dotFile/vimrcs/project.vim
badd +1 ~/repository/dotFile/vimfiles/plugins/vim-project
badd +116 ~/repository/dotFile/vimrcs/setting.vim
badd +1 ~/files/vim/tmp.vim
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=atIoO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
