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
alias dg='gd'
alias gcl='git clone'
alias grv='git remote -v'
alias gst='git st'
alias st='git st'
alias branches='git branches'
alias publish='git publish'
alias sprout='git sprout'
alias switch='git switch'
alias gimme='git pull origin master'
alias hc='hub clone'
alias hl='hub clone'
alias hcl='hub clone'
alias gp='git push'
alias glog='git log --pretty=oneline'
alias githist='git log -S'
alias gf='git fetch'
alias fetch='git fetch'
alias pull='git pull'
alias rpm='git rpm'
alias gitlog="git log --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gittoday="git log --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --since=yesterday"
alias gco='git checkout'
alias checkout='git checkout'
alias gdm='git diff master'
alias gw='ghwd.sh'

# development package managers
alias fp='fixpack'
alias ni='npm i'
alias ns='npm start'
alias ninit='cp ~/.package.json ./package.json'
alias npms='npm start'
alias nig='npm install -g'
alias nid='npm install --save-dev'
alias nis='npm install --save'
alias npmc='npm cache clean ; npm cache clean -g'
alias npmu='npm update -g ; npmc'
alias nr='npm run'
alias nrs='npm run -s'
alias nu='npmc ; npm i -g n ; n latest ; npm i -g npm@latest ; node -v ; npm -v'
alias npmupd='nu ; npmu'
alias nt='npm test'
alias bumpversion='ae "version bump" && gp && npm publish'
alias bv='bumpversion'
alias bupd='bower update'
alias bi='bower install'
alias pipupd='pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'
alias brewupd='brew update && brew upgrade --all && brew cleanup && brew prune && brew doctor'
alias vev='virtualenv -p /usr/bin/python3 venv'
alias pip='pip3.6'

# apt/dpkg stuff
alias upd='sudo apt-get update'
alias upg='sudo apt-get update && sudo apt-get upgrade'
alias prg='sudo apt-get purge'
alias search='apt-cache search '
alias policy='apt-cache policy'
alias depends='apt-cache depends'
alias ins='sudo apt-get install'
alias insd='dpkg -l | ag ii | less'
alias isit='dpkg -l | ag ii | ag '
alias rdepends='apt-cache rdepends'
alias show='apt-cache show'
alias dupg='sudo apt-get update && sudo apt-get dist-upgrade'
alias arm='sudo apt-get autoremove'
alias what-gives='apt-cache show "$1" | grep "^Filename:" | sed -e "s:\(.*\)/\(.*\)/\(.*\)/\(.*\)/.*:\4:"'
alias what-repo='apt-cache show "$1" | grep ^Filename: | head -n1 | col2 /'
alias what-source='apt-cache show "$1" | grep "^Filename:" | sed -e "s:\(.*\)/\(.*\)/\(.*\)/\(.*\)/.*:\4:"'

# navigation
alias Cd='cd'
alias CD='cd'
alias cd..='cd ..'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../../"
alias ......="cd ../../../../.."
alias ,,='..'
alias ,,,='...'
alias ,,,,='....'
alias ,,,,,='.....'
alias ,,,,,,='......'
alias fonts="cd /usr/share/fonts"
alias cs='cd $OLDPWD'
alias ..a='.. && a'
alias ...a='... && a'
alias ....a='.... && a'

# safety, etc.
# alias rm='rm -Iv --preserve-root'
# gh:sindresorhus/trash,empty-trash
alias rm='trash'
alias erm='empty-trash'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
# alias shred='shred -n 100 -z -v -u'
alias shred='echo NOPE, WE LIKE '
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
alias ch='chromium'
alias ff='firefox'
alias ffs='firefox --safe-mode'
alias ffm='firefox --ProfileManager'
alias ffms='firefox --ProfileManager --safe-mode'
alias qu='qutebrowser'
alias sm='seamonkey'

# killing browsers
alias kk='kill-tabs'
alias kch='pkill -15 chromium'
alias kff='pkill -15 firefox'
alias ksm='pkill -15 seamonkey'
alias kqu='pkill -15 qutebrowser'

# dropbox
alias dbup='dropbox start'
alias dbdn='dropbox stop'
alias dbst='dropbox status'
alias dbls='dropbox filestatus ~/Dropbox/*'
alias dbfs='dropbox filestatus'

# twitter
alias tweet='twidge update'
alias feed='twidge lsrecent -w `tput cols`'
alias mytw='twidge lsarchive -w `tput cols`'

# this serves as a replacement for the script from http://motd.sh/
# for your config, change the zip code, degrees (to c, if needed), stocks (to y, if needed),
# and quotes (to '' if needed).
alias motd='curl -fsH "Accept: text/plain" "http://motd.sh/?v=0.01&weather=84601&degrees=f&stocks=&quotes=y" && echo " "'

# this requires sox, and is for CGCFGC. change to E2-E4 (etc) for standard.
alias tuner='for n in C2 G2 C3 F3 G3 C4;do play -n synth 4 pluck $n repeat 2;done'

# using gh:ruyadorno/ipt
alias irm="ls | ipt -m | xargs rm -rf"
alias irebase="git --no-pager log --oneline | ipt | cut -d ' ' -f 1 | xargs -o git rebase -i"
alias icheckout="git --no-pager log --oneline | ipt | cut -d ' ' -f 1 | xargs git checkout"

# docker
alias dockerlast='docker ps -lq'
alias dockerkillall='docker kill $(docker ps -a -q)'
alias dockerremovecontainers='docker rm $(docker ps -a -q)'
alias dockerremoveimages='docker rmi $(docker images -q -f dangling=true)'
alias dockergetip='[ -n "$1" ] && docker inspect --format "{{ .NetworkSettings.IPAddress }}" $1'
alias dockergetid='[ -n "$1" ] && docker inspect --format "{{ .ID }}" $1'
alias dockergetimage='[ -n "$1" ] && docker inspect --format "{{ .Image }}" $1'
alias dockergetstate='[ -n "$1" ] && docker inspect --format "{{ .State.Running }}" $1'
alias dockergetport='[ -n "$1" ] && docker inspect --format "{{ .NetworkSettings.Ports }}" $1'
alias dockeri='docker images'
alias dockeria='docker images -a'
alias dockerp='docker ps'
alias dockerpa='docker ps -a'

# aws
alias ebl='eb list'
alias ebls='eb list'
alias ebhealth='eb health --verbose --refresh'
alias ebh='eb health --verbose --refresh'
alias ebst='while true ; do eb status -v && sleep 60 && clear ; done'
alias ebs='while true ; do eb status -v && sleep 60 && clear ; done'
alias ebev='eb events -f'
alias ebe='eb events -f'

# nvim
alias v='v.sh'
alias ex='nvim'
alias vi='nvim'
alias vib='nvim -b'
alias vim='nvim'
alias vir='nvim -R'
alias virb='nvim -R -b'
alias view='vim -R'
alias vl='v -l'
alias vivi='nvim ~/.config/nvim/init.vim'

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
alias ag='ag --path-to-agignore ~/.agignore'
alias cat='ccat'
alias Cat='cat'
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
alias dugigs='du -h . | grep ^[0-9.][0-9.]G'
alias duhere='du -sh ./*'
alias dumegs='du -h . | grep ^[5-9][0-9][0-9.]M'
alias es='evilscan 127.0.0.1 --port=1024-29000'
alias explain='explain.sh'
alias feh='viewnior'
alias ffind='ffind.py'
alias fontlist='fc-list | cut -d : -f 2 | sort -u | uniq'
alias fs='ranger'
alias gui='startxfce4'
alias h='history'
alias hackkurlist='wget -O - hackurls.com/ascii | less'
alias hackurls='w3m hackurls.com'
alias halp='lo -R ~/doc/'
alias hr='hr.sh'
alias ix='ix.sh'
alias k9='pkill -9'
alias kafe='coffee -c'
alias kat='ccat'
alias kmdb='mdb --shutdown'
alias kn='killall node'
alias le='less'
alias les='less'
alias lh='laenza.sh'
alias localbin='zerobin && lt -p 8000'
alias locate='locate -ie'
alias makelist="make -rpn | sed -n -e '/^$/ { n ; /^[^ .#][^ ]*:/p ; }' | egrep --color '^[^ ]*:'"
alias manb='man -H'
alias mc='msee'
alias md='mkdir -p -v'
alias mdb='mongod --dbpath=db/ --fork --nojournal --syslog'
alias mp='mplayer2'
alias mpad='mousepad'
alias ms='msee'
alias mu='mocp -y -T moc_theme'
alias names='names.sh'
alias nodi='nodei'
alias nodr='repl.history'
alias pa='xclip -selection clipboard -o'
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
alias sf='standard-format -w'
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
alias wgetmir='wget --random-wait -r -e robots=off '
alias words="shuf -n 1000 /usr/share/dict/words | sed s/\'s// | tr '[:upper:]' '[:lower:]' | sort"
alias wtf='wtf.sh'
alias xfds='xfce4-display-settings'
alias yt2mp3='youtube-dl --extract-audio --audio-format mp3'
alias zh='zathura'
alias chucknorris='curl -s http://api.icndb.com/jokes/random/ | jq .'
alias dict='dict.sh'
alias shrug='echo "¯\_(ツ)_/¯"'
alias droplet='ssh root@zacanger.com'
alias clock='zclock -24 -green'
alias plaidchat='plaidchat --close-to-tray --minimize-to-tray'
alias ris='ristretto'
alias ris.='ristretto .'
alias rickroll='curl -L http://bit.ly/10hA8iC'
alias bn='babel-node'
alias ae='acp'
alias shittyusername='curl http://www.shittyusernames.com/api/get-username ; echo'
alias todo='nvim ~/Dropbox/.todo.json'
alias cmps='compass clean && compass compile && compass watch'
alias news='curl http://nycurl.sytes.net/'
alias getjane='hc git@github.com:jane/jane-com.git com ; cd com ; ni ; bi'
alias whihc='which'
alias ghci='ghci.sh'
alias am='alsamixer'
alias httpcodes="cat $HOME/Dropbox/work/repos/doc/http-status-codes.json | jq ."
alias nn='node-nightly'
