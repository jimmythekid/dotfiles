alias ls="pwd; ls -la -G"
export PS1="\[\033[3;97m\]\u: \[\033[1;94m\]\w \[\033[1;97m\]\$\[\033[0m\]\n[\$(date +%k:%M:%S)] => "

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi




alias scala="cd /usr/local/Cellar/scala/2.11.4/bin/; ./scala"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa2

# added by Anaconda 2.1.0 installer
# export PATH="/Users/jimmy/anaconda/bin:$PATH"
export PATH=$PATH:/usr/local/Cellar/mysql/5.6.22/bin/
export PATH=$PATH:/usr/local/Cellar/python/
export PATH=$PATH:/usr/local/Cellar/scala/2.11.4/bin/
export PATH=$PATH:/usr/local/Cellar/tree/1.7.0/bin/
export PATH=$PATH:/usr/local/Cellar/awscli/1.6.5/bin/
export PATH=$PATH:/usr/local/Cellar/go/1.3.3/bin/

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

#ssh -N user@my_server -R 8090:localhost:22 -o ServerAliveInterval=30
alias proxy="ssh -i ~/.ssh/humin-datascience.pem -ND 8099 hadoop@ec2-54-148-249-58.us-west-2.compute.amazonaws.com"
# ssh -i ~/.ssh/humin-datascience.pem -ND 8099 hadoop@ec2-54-148-249-58.us-west-2.compute.amazonaws.com

alias emr_server="ssh -i ~/.ssh/humin-datascience2.pem -ND 8157 hadoop@ec2-52-10-132-235.us-west-2.compute.amazonaws.com"
alias univ_server="ssh -i ~/.ssh/humin-datascience2.pem -ND 8157 hadoop@ec2-52-24-111-241.us-west-2.compute.amazonaws.com"
alias univ_server2="ssh -i ~/.ssh/humin-datascience2.pem -ND 8157 hadoop@ec2-52-10-42-123.us-west-2.compute.amazonaws.com"
alias verify_rds="mysql -h datasciencerdb.ct2ngjblgja1.us-west-2.rds.amazonaws.com -P 3306 -u humin -p"

alias verify_server="mysql -u jimmy --password='!j@i@m@m@y!' --database='humin_verify' -h 54.149.181.215"
