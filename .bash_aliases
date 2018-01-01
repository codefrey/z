# vim: ft=sh

# ~/.bash_aliases : sourced by ~/.bashrc

# kill everything
alias killx='sudo pkill -9 Xorg'
alias ka='killall'

# bye
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'
alias bye='sudo /sbin/poweroff'

# managing .bashrc & .bash_aliases
alias edrc='nvim ~/.bashrc'
alias brc='nvim ~/.bashrc'
alias edal='nvim ~/.bash_aliases'
alias reload='source ~/.bashrc'
alias rl='reload'
alias fn='cd ~/.bash_functions'
alias fns='ls ~/.bash_functions/'

# git &co. ; see gitconfig for more
alias gd='git diff'
alias gcl='git clone'
alias grv='git remote -v'
alias gst='git st'
alias branches='git branches'
alias publish='git publish'
alias switch='git switch'
alias hc='hub clone'
alias hl='hub clone'
alias hcl='hub clone'
alias gp='git push'
alias gpf='git pf'
alias glog='git log --pretty=oneline'
alias githist='git log -S'
alias gf='git fetch'
alias fetch='git fetch'
alias pull='git pull'
alias rpo='git rpo'
alias gitlog="git log --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gittoday="git log --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --since=yesterday"
alias gco='git checkout'
alias checkout='git checkout'
alias gdm='git diff master'
alias gw='ghwd.sh'
alias gdd='git diff --dirstat'
alias gl='glog'
alias gg='gitlog'
alias gtd='gittoday'
alias gs='gst'
alias gitodo='git grep -EiI "FIXME|TODO"'
alias push='git push'
alias gds='git diff --stat'
alias rbl='git rebase -i HEAD~2'
alias prb='pull && rpo && branches'
alias aca='ac a'
alias gmv='git mv'

# development package managers
alias np='npm publish'
alias ni='npm i'
alias ns='npm start -s'
alias ng='npm install -g'
alias ngh='ng $(basename $(pwd))'
alias nid='npm install --save-dev'
alias nis='npm install --save'
alias nr='npm run -s'
alias nu='npm i -g n ; n latest ; npm i -g npm@next ; npm i -g npx ; n prune ; node --version'
alias nt='npm test'
alias nb='npm run build'
alias jv='jq .version < package.json'
alias vp='vi package.json'
alias pipupd='pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'
alias brewupd='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'
alias vev='virtualenv -p /usr/bin/python3 venv'
alias lfd='lein figwheel dev'

# apt/dpkg stuff
alias search='apt-cache search'
alias policy='apt-cache policy'
alias depends='apt-cache depends'
alias ins='sudo apt-get install'
alias insd='dpkg -l | ag ii | less'
alias isit='dpkg -l | ag ii | ag '
alias rdepends='apt-cache rdepends'
alias show='apt-cache show'
alias what-gives='apt-cache show "$1" | grep "^Filename:" | sed -e "s:\(.*\)/\(.*\)/\(.*\)/\(.*\)/.*:\4:"'
alias what-repo='apt-cache show "$1" | grep ^Filename: | head -n1 | col2 /'
alias what-source='apt-cache show "$1" | grep "^Filename:" | sed -e "s:\(.*\)/\(.*\)/\(.*\)/\(.*\)/.*:\4:"'

# navigation
alias d='cd'
alias Cd='cd'
alias CD='cd'
alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../../"
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias ,,='..'
alias ,,,='...'
alias ,,,,='....'
alias ,,,,,='.....'
alias ,,,,,,='......'
alias ,,,,,,,='.......'
alias ,,,,,,,,='........'
alias ,,,,,,,,,='.........'
alias fonts="cd /usr/share/fonts"
alias cs='cd $OLDPWD'
alias ..a='.. && a'
alias ...a='... && a'
alias ....a='.... && a'

# safety, etc.
# gh:sindresorhus/trash,empty-trash
alias rm='trash'
alias erm='empty-trash'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias unl='unlink'
alias rml='unlink'

# ls things
alias ls='ls -F --color=auto --group-directories-first'
alias k='ls'
alias l='ls -oshS'
alias la='ls -A'
alias ll='ls -lh --author'
alias lo='ls -lghtr'
alias lT='ls -rtH'
alias ld='ls -d */'
alias lr='ls -aR'
alias lc='ls -ltcr'
alias lH='ls -hHsorA'
alias lS='ls -AosSh'
alias a='ls -A'
alias aa='ls -A'
alias f='k -1'

# grep things
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# starting browsers
alias chromium='google-chrome-unstable' # until i figure out why extensions don't sync to chromium
alias ch='chromium'
alias ff='firefox'
alias qu='qutebrowser --enable-webengine-inspector'

# killing browsers
alias kk='kill-tabs'
alias kch='pkill -15 chromium'
alias kff='pkill -15 firefox'
alias kqu='pkill -15 qutebrowser'

# dropbox
alias dbup='dropbox start'
alias dbdn='dropbox stop'
alias dbst='dropbox status'
alias dbls='dropbox filestatus ~/Dropbox/*'
alias dbfs='dropbox filestatus'

# this serves as a replacement for the script from http://motd.sh/
# for your config, change the zip code, degrees (to c, if needed), stocks (to y, if needed),
# and quotes (to '' if needed).
alias motd='curl -fsH "Accept: text/plain" "http://motd.sh/?v=0.01&weather=84601&degrees=f&stocks=&quotes=y" && echo " "'

# this requires sox, and is for DADGAD. change to E2-E4 (etc) for standard.
alias tuner='for n in D2 A2 D3 G3 A3 D4;do play -n synth 4 pluck $n repeat 2;done'

# nvim
alias v='v.sh'
alias ex='nvim'
alias vi='nvim'
alias vu='nvim'
alias iv='nvim'
alias vo='nvim'
alias nim='nvim'
alias vib='nvim -b'
alias vim='nvim'
alias vir='nvim -R'
alias virb='nvim -R -b'
alias view='vim -R'
alias vl='v -l'
alias vivi='nvim ~/.config/nvim/init.vim'
alias v='nvim'
alias bi='nvim'

# all the rest
alias q='exit'
alias q!='q'
alias :WQ='q'
alias :Wq='q'
alias :Q='q'
alias :q='q'
alias :wQ='q'
alias :wq='q'
alias A='la'
# alias ag='ag --path-to-agignore ~/.agignore'
# alias cat="highlight $1 --out-format xterm256 --line-numbers --quiet --force --style solarized-light"
alias cat='ccat'
alias Cat='cat'
alias cta='cat'
alias at='cat'
alias ca='cat'
alias Q!='q'
alias Q='q'
alias ZZ='q'
alias aag='a | ag'
alias all='compgen -c | sort -u'
alias apr="apropos"
alias bbp='./bb.sh post'
alias bofhexcuse='telnet towel.blinkenlights.nl 666'
alias starwars='telnet towel.blinkenlights.nl'
alias bs='bs.sh'
alias c2f='ctof.sh'
alias c='clear'
alias cheatsheet='less ~/doc/cheatsheet.md'
alias cl='clone'
alias claer='clear'
alias cn='cn.sh'
alias co='xclip -selection clipboard'
alias ctimg='ctimg.sh'
alias ctof='ctof.sh'
alias cuip='curl ifconfig\.me/ip'
alias cx='chmod +x'
alias dashes='dashes.sh'
alias dayofyear='date +%j'
alias dfm='dmenu-fm'
alias di='diff'
alias dif='diff'
alias diffdir='diffdirs.sh'
alias diffdirs='diffdirs.sh'
alias dirsize='dirsize.sh'
alias disk='du -S | sort -n -r | less'
alias dmenfm='dmenfm.sh'
alias dmenu-fm='dmenu-fm.sh'
alias dmenu_wrapper='dmenu_wrapper.sh'
alias ds.='dirsize.sh .'
alias ds='dirsize.sh'
alias dt="dvtm -m ^"
alias es='evilscan 127.0.0.1 --port=1024-29000'
alias explain='explain.sh'
alias ffind='ffind.py'
alias fontlist='fc-list | cut -d : -f 2 | sort -u | uniq'
alias fs='ranger'
alias Fs='ranger'
alias h='history'
alias hackkurlist='wget -O - hackurls.com/ascii | less'
alias hackurls='w3m hackurls.com'
alias halp='lo -R ~/doc/'
alias k9='pkill -9'
alias less='less -m -N -g -i -J --line-numbers --underline-special'
alias localbin='zerobin && lt -p 8000'
alias locate='locate -ie'
alias makelist="make -rpn | sed -n -e '/^$/ { n ; /^[^ .#][^ ]*:/p ; }' | egrep --color '^[^ ]*:'"
alias manb='man -H'
alias md='mkdir -p -v'
alias names='names.sh'
alias nodi='nodei'
alias nodr='repl.history'
alias pa='xclip -selection clipboard -o'
alias clearclip='echo -n | co'
alias pb='pinboard'
alias phps='php -S 127.0.0.1:5555'
alias random8chars='dd if=/dev/urandom count=1 2> /dev/null | uuencode -m - | sed -ne 2p | cut -c-8'
alias rbs='rainbowstream'
alias rep='repl-it'
alias reph='repl-here'
alias replface='replface.js'
alias rf='replface'
alias screencast='ffmpeg -f x11grab -s wxga -r 25 -i :0.0 -sameq ~/.tmp/screencast.mpg'
alias sd.='dirsize.sh .'
alias sd='dirsize.sh'
alias sf='standard --fix'
alias sfm='spacefm'
alias sl='slack'
alias slh='slackhist'
alias sprunge='sprunge.sh'
alias stopwatch='time read -N 1'
alias sw='time cat'
alias timestamp='date -d "$date" +%s'
alias undo='undo.sh -i'
alias vn.='viewnior .'
alias vn='viewnior'
alias vp='vtop'
alias wfn='wait-for-net.sh'
alias words="shuf -n 1000 /usr/share/dict/words | sed s/\'s// | tr '[:upper:]' '[:lower:]' | sort"
alias wtf='wtf.sh'
alias xfds='xfce4-display-settings'
alias yt2mp3='youtube-dl --extract-audio --audio-format mp3'
alias zh='zathura'
alias chucknorris='curl -s http://api.icndb.com/jokes/random/ | jq .'
alias dict='dict.sh'
alias shrug='echo "¯\_(ツ)_/¯"'
alias shco='shrug | co'
alias lmbd='echo λ'
alias lmco='lmbd | co'
alias droplet='ssh root@zacanger.com'
alias clock='zclock -24 -green'
alias plaidchat='plaidchat --close-to-tray --minimize-to-tray'
alias ris='ristretto'
alias ris.='ristretto .'
alias rickroll='curl -L http://bit.ly/10hA8iC'
alias bn='babel-node'
alias shittyusername='curl http://www.shittyusernames.com/api/get-username ; echo'
alias todo='nvim ~/Dropbox/work/wip/.todo.json'
alias cmps='compass clean && compass compile && compass watch'
alias reacterrorcodes='curl https://raw.githubusercontent.com/facebook/react/master/scripts/error-codes/codes.json | jq .'
alias whihc='which'
alias am='alsamixer'
alias checkip='curl http://checkip.amazonaws.com/'
alias epochday="echo epoch day $(( $( date +%s) /86400 ))"
alias pyc='python -c'
alias ne='node -e'
alias ndoe='node'
alias getjane='hc git@github.com:jane/jane-com.git com ; cd com'
alias sj='ni && dcb && ns'
alias lint='npm run test:lint'
alias findallcolours="egrep -oi '#[a-f0-9]{6}' *.css | sort | uniq"
alias httpa='httpcodes all | jq .'
alias ghstatus='curl -s https://status.github.com/api/status.json | jq .status'
alias githubstatus='curl -s https://status.github.com/api/messages.json | jq .'
alias rkt='racket'
alias gc='g c'
alias ninit='ninit.sh'
alias checkforupdates='gf && rpo && branches && ncu'
alias cfu='checkforupdates'
alias ytdl='youtube-dl'
alias alltlds="curl -s http://data.iana.org/TLD/tlds-alpha-by-domain.txt | grep -v XN | sed -e 1d -e 's/\(.*\)/\L\1/'"
alias ur='unrar x -kb'
alias cerm='c ; erm'
alias aerm='a ; erm'
alias ermq='erm ; q'
alias wl='wc -l'
alias fx='find . -maxdepth 2 -type d -name x'
alias rainy="mplayer $HOME/Dropbox/z/x/rainy.ogg"
alias transfersh='sh -c '\'' curl --upload-file "${1}" https://transfer.sh/$(basename "${1}")'\'' -'
alias acd='a ; cd'
alias tw='send-tweet'
alias checkjane='curl -s https://jane.com/-/diag | jq .status'
alias findlonglines="grep '.\{120\}' -r"
alias xl='xtrlock'
alias no='yes n'
alias xfl='xflux -z 84047'
alias th='thunar .'
alias st='stterm'

if [[ `uname` == 'Darwin' ]] ; then
  alias bs='pmset -g batt | sed -n 2p'
  alias file='file -h'
fi
