POWERLEVEL9K_MODE='nerdfont-complete'
source  ~/powerlevel9k/powerlevel9k.zsh-theme

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(anaconda ssh dir vcs status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"

POWERLEVEL9K_ANACONDA_LEFT_DELIMITER="("
POWERLEVEL9K_ANACONDA_RIGHT_DELIMITER=")"

# Load Zsh tools for syntax highlighting and autosuggestions
#HOMEBREW_FOLDER="/usr/local/share"
#source "$HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
#source "$HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh"

# for config the python interactive prompt
export PYTHONSTARTUP=$HOME/.pyrc
export PATH=$HOME/.bin:$PATH

