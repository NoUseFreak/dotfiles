
# vhosts
alias hosts='sudo vim /etc/hosts'

# IP addresses
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Shorter-cuts
alias st="git st"

# Xdebug
alias xdebug="XDEBUG_CONFIG=\"idekey=PHPSTORM\" php -d xdebug.remote_enable=true "

# Html2Text
alias html2text="html2text -width $(tput cols)"
