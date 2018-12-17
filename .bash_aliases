alias rmpyc='find . -name "*.py[c|o]" -exec rm -rf {} \;'

# ---------------
# GIT
# ---------------
alias gl="git log --all --decorate --oneline --graph"
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '

# ----------------
# DOCKER
# ----------------
alias dc="docker "
alias dcmp="docker-compose "

# Stop Restarting
alias dcstoprestart="docker stop $(docker ps -a -q) && docker update --restart=no $(docker ps -a -q)" #" & systemctl restart docker"

# Cleaning volues
alias dcdelvol="docker volume ls -qf dangling=true | xargs -r docker volume rm"

# Kill all running containers.
alias dckillall="docker kill $(docker ps -q)"

# Delete all stopped containers.
alias dccleanc="docker rm $(docker ps -a -q)"

# Delete all untagged images.
alias dccleani="docker rmi $(docker images -q -f dangling=true)"

# Delete all stopped containers and untagged images.
alias dcclean="dockercleanc || true && dockercleani"

# Give me IP for the container
alias dcimgip="docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'"

# ----------------
# PERSONAL PROJECT
# ----------------
# Activate python virtual environment
alias project="source ~/path/to/virtual/environment/bin/activate && cd ~/path/to/project"