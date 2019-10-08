PATH="/usr/local/bin:$PATH"
source $HOME/.config/env.sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Volumes/Data/Users/3spy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

prompt_lang_segment () {
    # Looks up the folder path + name
    dir="$( cd "$(dirname "$0")" ; pwd -P )"
    # Checks if it is the desired language/framework folder, in this case, python
    if [[ $dir == *"Dev/C"* ]] ; then 
        content="\ue61e C%f"
        "$1_prompt_segment" "$0" "$2" "018" "015" "$content" "#"
    fi
    if [[ $dir == *"Dev/cs"* ]] ; then
        content="\ue77f C#%f"
        "$1_prompt_segment" "$0" "$2" "053" "015" "$content" "#"
    fi
    if [[ $dir == *"Dev/cpp"* ]] ; then
        content="\ue61d C++%f"
        "$1_prompt_segment" "$0" "$2" "025" "015" "$content" "#"
    fi
    if [[ $dir == *"Dev/go"* ]] ; then
        content="\ue626 Go%f"
        "$1_prompt_segment" "$0" "$2" "037" "015" "$content" "#"
    fi
    if [[ $dir == *"Dev/js"* ]] ; then
        content="\ue781 Javascript%f"
        "$1_prompt_segment" "$0" "$2" "220" "000" "$content" "#"
    fi
    if [[ $dir == *"Dev/java"* ]] ; then
        content="\ue256 Java%f"
        "$1_prompt_segment" "$0" "$2" "031" "214" "$content" "#"
    fi
    if [[ $dir == *"Dev/python"* ]] ; then
        content="\ue235 Python%f"
        "$1_prompt_segment" "$0" "$2" "025" "221" "$content" "#"
    fi
    if [[ $dir == *"Dev/arduino"* ]] ; then
        content="\ufbe2 Arduino%f"
        "$1_prompt_segment" "$0" "$2" "015" "030" "$content" "#"
    fi
    if [[ $dir == *"Dev/rust"* ]] ; then
        content="\ue7a8 Rust%f"
        "$1_prompt_segment" "$0" "$2" "015" "000" "$content" "#"
    fi
    if [[ $dir == *"Dev/sql"* ]] ; then
        content="\ue76e SQL%f"
        "$1_prompt_segment" "$0" "$2" "015" "024" "$content" "#"
    fi
    if [[ $dir == *"Dev/swift"* ]] ; then
        content="\ufbe3 Swift%f"
        "$1_prompt_segment" "$0" "$2" "202" "015" "$content" "#"
    fi
}


# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  dir
  vcs
  newline
  lang_segment
  status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# POWERLEVEL9K_APPLE_ICON='\uf302'

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
          git
          colored-man-pages
          colorize
          copydir
          cp
          tmux
          vundle
          brew
          osx
          lol
          rand-quote
          pip
          python
          zsh-syntax-highlighting
          zsh-autosuggestions
        )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
neofetch
