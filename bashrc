# http://www.reddit.com/r/ruby/comments/wgtqj/how_i_spend_my_time_building_rails_apps/c5daer4
# More suitable settings for ruby when running rails apps
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

#my stuff
#alias git commands to use hub
alias git='hub'
alias ap='cd ~/Development/intellisource_clean/apollo'
alias precomp='RAILS_ENV=production bundle exec rake assets:precompile'
alias brake='bundle exec rake'
alias be='bundle exec'
alias ste='open -a "Sublime Text 2"'
alias sted='open -a "Sublime Text 2" .'
alias pcwicon='heroku console --app pcwi-production'
alias pcsfcon='heroku console --app pcwi-sf-production'
alias pcwidepprod='git push production master; heroku rake db:migrate --app pcwi-production; heroku restart --app pcwi-production'
alias pcwidepstag='git push staging master; heroku rake db:migrate --app pcwi-staging; heroku restart --app pcwi-staging'
alias pcsfdepprod='git push production master; heroku rake db:migrate --app pcwi-sf-production; heroku restart --app pcwi-sf-production'
alias pcsfdepstag='git push heroku master; heroku rake db:migrate --app pcwi-sf-staging; heroku restart --app pcwi-sf-staging'
alias h='heroku'
alias pcwidev='sudo cp -f /private/etc/apache2/passenger_pane_vhosts/pcwi.local.dev /private/etc/apache2/passenger_pane_vhosts/pcwi.local.vhost.conf; webrestart'
alias pcwitest='sudo cp -f /private/etc/apache2/passenger_pane_vhosts/pcwi.local.test /private/etc/apache2/passenger_pane_vhosts/pcwi.local.vhost.conf; webrestart'
alias webrestart='sudo /usr/sbin/apachectl restart'
alias showhiddenfiles='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hidehiddenfiles='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'
alias fontsm='defaults -currentHost write -globalDomain AppleFontSmoothing -int 2'
alias memcached='/usr/local/bin/memcached'
alias pcrp='cd ~/Development/pcwi-reports'
alias pcwi='cd ~/Development/pcwi'
alias pcsf='cd ~/Development/pcwi_sf_services'
alias pw='cd ~/Development/phocuswright'
alias gr='cd ~/Development/GRez'
alias pc='cd ~/Development/pcportal'
# alias ss='authbind --deep script/server -p 80'
alias con='script/console'
alias tlog='tail -f log/development.log'
alias rl='rm log/development.log'
alias fstart='script/ferret_server start'
alias fstop='script/ferret_server stop'
alias clog='rm log/*.*'
alias sshp='ssh deploy@legacy.phocuswright.com'
alias sfpstart='script/sf_pusher start development'
alias sfpstop='script/sf_pusher stop development'
alias bjfstart='script/bj_factory start development'
alias bjfstop='script/bj_factory stop development'
alias dmstart='sfpstart;bjfstart'
alias dmstop='bjfstop;sfpstop'
alias bbye='fstop;clog;exit'
alias co='git checkout'
alias gb='git branch'
alias gaa='git add -A'
alias pids='ls log/*.pid'
alias edit='gedit'
alias sedit='gksu gedit'
alias svim='sudo vim'
# generate tags for project using ctags...
alias gentags='/usr/local/bin/ctags -R --exclude=.git --exclude=log *'
# deploy pc10 to production
# alias capprod='cap production deploy -s tag=staging-'
alias wakemac='sudo etherwake 00:1b:63:a6:cc:7a'

# vagrant stuff
alias vs='vagrant status'
alias vu='vagrant up'
alias vsh='vagrant ssh'
alias vh='vagrant halt'
alias vsp='vagrant suspend'
alias vbl='vagrant box list'

# git aliases from peepcode
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gdf='git diff-files -p --color'
alias grestore='git checkout HEAD --'
alias gu='git gui &'
alias gk='gitk --all &'
alias gcq='git commit -a -m'
alias gsl='git stash list'
alias gss='git stash save'
alias gsp='git stash pop'

# COMVERGE ALIASES
alias apsc='ap; script/console'
alias apss='ap; script/server'
alias bsa='bundle exec rake bootstrap:all'
# alias ci_portal='cd ~/workspace/smartgrid/ci_portal'
alias cu='bundle exec cucumber -x --tags=~@wip'
alias dbc='script/dbconsole'
alias dbd='bundle exec rake db:drop'
alias dbm='bundle exec rake db:migrate'
alias dbmr='bundle exec rake db:migrate:reset'
alias dbounce='IGNORE_REDIS=true bundle exec rake daemons:development:stop && rake daemons:development:start'
alias dbtp='bundle exec rake db:test:prepare'
alias dstart='IGNORE_REDIS=true bundle exec rake daemons:development:start'
alias dstat='IGNORE_REDIS=true bundle exec rake daemons:status'
alias dstop='IGNORE_REDIS=true bundle exec rake daemons:development:stop'
# alias elm='emacsclient `lm`'
# alias gco='git checkout'
# alias gd='git diff'
alias gem='ruby -e "raise \"SUDO GEM DETECTED. Unalias gem at your own risk\" if ENV[\"USER\"] == \"root\"" && gem'
alias gf='git remote update'
alias gg='git grep'
# alias gpf='git push github `git rev-parse --abbrev-ref HEAD` -f'
alias gpr='git pull --rebase'
alias grom='git fetch origin; git rebase origin/master'
alias ll='ls -al'
# alias lm='find db/migrate/ -type f | tail -1'
# alias portal='cd ~/workspace/smartgrid/portal'
alias rbounce='rstop; rstart'
alias rsp='rspec -d --drb --require ../common/lib/testing/rspec_timing_formatters.rb --format Testing::TimedDocumentationFormatter'
alias rspc='rspec -d --drb --require ../common/lib/testing/rspec_timing_formatters.rb --format NyanCatFormatter'
alias rstart='bundle exec rake daemons:resque:start daemons:thingling:start'
alias rstop='bundle exec rake daemons:redis:stop daemons:thingling:stop'
alias rtbounce='rtstop; rtstart'
alias rtstart='RAILS_ENV=test rstart'
alias rtstop='RAILS_ENV=test rstop'
# alias rvm-restart='rvm_reload_flag=1 source '\''/Users/jasonn/.rvm/scripts/rvm'\'''
# alias rw='bundle exec resque-web ~/workspace/smartgrid/apollo/config/initializers/resque.rb'
# alias sc='script/console'
alias ss='script/server'
alias ssb='script/server 2>1 >> server.log &'
alias ssd='script/server --debug'
# alias sudo='sudo '
# alias tbounce='IGNORE_REDIS=true RAILS_ENV=test bundle exec rake daemons:test:stop && RAILS_ENV=test bundle exec rake daemons:test:start'
# alias tm='bundle exec rake db:migrate; rake db:migrate:redo'
# alias trw='RAILS_ENV=test rw'
alias tstart='IGNORE_REDIS=true bundle exec rake daemons:test:start'
alias tstop='IGNORE_REDIS=true bundle exec rake daemons:test:stop'
# alias vi='vi -u /usr/share/vim/vimrc'

# Default to human readable figures
alias df='df -h'
alias du='du -h'

# Misc :)
# alias less='less -r'                          # raw control characters
# alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour

# Some shortcuts for different directory listings
alias ls='ls -lhFG'                             # classify files in colour
alias la='ls -lahFG'                            # classify files in colour
alias dir='ls -FG'                              # wide format
alias ld='ls -lp | grep "/"'                   # dirs only

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/bin # Add ~/bin

export EDITOR=/usr/bin/vim
# use vi mode in bash
set -o vi

# for cool less functionality
export LESS='-nfr'

export IGNORE_REDIS=true

# git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# set prompt
# PS1='\u:\w $ '
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

PS1="$RED\$(date +%H:%M) \W$YELLOW \$(__git_ps1)$GREEN[\$(git config user.initials)]$ "
