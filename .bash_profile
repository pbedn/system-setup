source ~/.bash/.git-prompt.sh # Show git branch name at command prompt
export GIT_PS1_SHOWCOLORHINTS=true # Option for git-prompt.sh to show branch name in color

function virtualenv_info(){
    # Get Virtual Env
    if [[ -n "$VIRTUAL_ENV" ]]; then
        # Strip out the path and just leave the env name
        venv="${VIRTUAL_ENV##*/}"
    else
        # In case you don't have one activated
        venv=''
    fi
    [[ -n "$venv" ]] && echo "($venv) "
}

# disable the default virtualenv prompt change
# export VIRTUAL_ENV_DISABLE_PROMPT=1

VENV="\$(virtualenv_info)";

# Terminal Prompt:
# Include git branch, use PROMPT_COMMAND (not PS1) to get color output (see git-prompt.sh for more)
export PROMPT_COMMAND='__git_ps1 "${VENV}\u \w" "\\\$ "' # Git branch (relies on git-prompt.sh)

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWUPSTREAM="auto git"
