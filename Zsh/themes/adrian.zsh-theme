# USERNAME
function username() {
    echo "%{$FG[124]%}%n%{$reset_color%}"
}

# DIRECTORY
function directory() {
    echo "%{$FG[069]%}%1~%{$reset_color%} "
}

# TIME
function current_time() {
    echo "%{$FG[124]%}%T%{$reset_color%}"
}

# GIT
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[069]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[196]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# PROMPT
PROMPT='%B$(username) $(directory) %{$FG[166]%}~[%{$reset_color%} '
RPROMPT=' %{$FG[166]%}]~ %{$FG[069]%}$(git_prompt_info)%{$reset_color%}  $(current_time)'
