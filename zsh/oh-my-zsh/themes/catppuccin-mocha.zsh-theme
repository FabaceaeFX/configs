# Catppuccin Mocha theme for oh-my-zsh
# Based on https://github.com/catppuccin/catppuccin

# Catppuccin Mocha color palette (256-color approximations)
# Rosewater: 217, Flamingo: 216, Pink: 212, Mauve: 183
# Red: 203, Maroon: 174, Peach: 216, Yellow: 229
# Green: 151, Teal: 153, Sky: 117, Sapphire: 74
# Blue: 75, Lavender: 189, Text: 250, Subtext1: 245
# Subtext0: 240, Overlay2: 238, Overlay1: 236, Overlay0: 234
# Surface2: 233, Surface1: 232, Surface0: 231, Base: 16

# Main prompt with conditional arrow color
PROMPT="%(?:%F{151}%1{➜%}%f :%F{203}%1{➜%}%f ) %F{189}%c%f"
PROMPT+=' $(git_prompt_info)'

# Git prompt styling
ZSH_THEME_GIT_PROMPT_PREFIX="%F{117}git:(%F{183}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{117}) %F{229}%1{✗%}%f"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{117})%f"

# Additional git status symbols (optional)
ZSH_THEME_GIT_PROMPT_ADDED="%F{151}+%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{229}!%f" 
ZSH_THEME_GIT_PROMPT_DELETED="%F{203}-%f"
ZSH_THEME_GIT_PROMPT_RENAMED="%F{189}»%f"
ZSH_THEME_GIT_PROMPT_UNMERGED="%F{216}═%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{183}?%f"
