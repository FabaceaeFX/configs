# Catppuccin-inspired robbyrussell theme
# Using muted, sophisticated colors similar to Catppuccin palette

PROMPT="%(?:%{$fg[cyan]%}%1{➜%} :%{$fg[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"
PROMPT+=' $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}git:(%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%})"
