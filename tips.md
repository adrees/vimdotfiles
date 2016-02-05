## VIM Tips

Some notes to jog the memory.

### Buffers

Airline plug-in adds tab like visibility

:ls -list buffers
:bn, bp -next and prev buffer
:bd delete buffer
:b <TAB> complete <Ctrl-D> will list all matches

:bufdo bd - close all buffers but the one I am on

:vsp | b{N} - open bufer N in vertical split view
 
ctrl+w h,j,k,l - switch to split

### Quick Fix Window

:copen " Open the quickfix window
:ccl   " Close it
:cw    " Open it if there are "errors", close it otherwise (some people prefer this)
:cn    " Go to the next error in the window
:cnf   " Go to the first error in the next file

### NerdTree

ctrl-n toggle 
o open
x close tree

### vim-surround

ysiw' wrap in single quotes
cs"' change double to single quotes
yss' wrap entire line
ds'  remove quotes
https://github.com/tpope/vim-surround

### Spell

F5 toggle spell check
]s, [s - next prev error
z= list corrections

### Motions

f{char} find on line the ; to repeat
t{char} find unTil e.g. dt{.} delete up to fullstop

^ first non blank char on line
$ end of line

ea insert at end of word
bi insert at start of work

<cmd> j or k - to move a line of text around 

ctl+d - down half page
ctl+u - up half page

### Completion 

From INSERT mode

ctrl-n and ctrl-p will navigate up and down the menus

i_CTRL-X Sub Mode aka ctrl-X then:

ctrl-O for omnicompletion
ctrl-F to look for file names
ctrl-N words in current file
ctrl-L complete whole lines


