# fix for terminator
functions --erase __update_vte_cwd

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
set fish_custom $HOME/.dotfiles/fish-custom

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
Plugin "theme"
Plugin "archlinux"
Plugin "jump"
Plugin "extract"
Plugin "balias"
Plugin "mc"
Plugin "pbpaste"
Plugin "assoc"
Plugin "functional"
Plugin "utils"
Plugin "gradle"

# Theme
Theme "coffeeandcode"
# Set prompt
source ~/.config/fish/fish_prompt.fish

set -x EDITOR slap
set -x PATH $HOME"/.bin" $HOME"/local/bin" /usr/local/bin /usr/bin /bin /usr/local/sbin /usr/sbin /sbin /usr/bin/vendor_perl /usr/bin/core_perl $HOME"/.gem/ruby/2.2.0/bin"
set -x M2_HOME "/opt/maven"
set -x _JAVA_OPTIONS '-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'

balias manb 'man --html=firefox'
balias !! 'sudo'
