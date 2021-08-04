set fish_greeting ""

set -x JAVA_HOME /usr/bin/java

#the GUROBI envirnoment varaible
set -x GUROBI_HOME /opt/gurobi901/linux64
set -x PATH PATH $GUROBI_HOME/bin $PATH
set -x LIBRARY_PATH "$GUROBI_HOME/lib"
set -x LD_LIBRARY_PATH "$GUROBI_HOME/lib"
set -x CLASSPATH "$LD_LIBRARY_PATH:$CLASSPATH"
set -x CLASSPATH "/opt/colt/lib/colt.jar:/opt/colt/lib/concurrent.jar:$CLASSPATH"

#making LaTeX command working
set -x PERL5LIB /usr/share/tlpkg
set -x PATH /usr/share/texmf-dist/scripts/texlive $PATH

# rust configurations
set -x PATH $HOME/.cargo/bin $PATH

set -x PYTHONPATH /usr/lib/python2.7/site-packages
set -x PYTHONPATH /usr/lib/python3.8/site-packages $PYTHONPATH

# set default editor
set -x VISUAL nvim
set -x EDITOR $VISUAL

alias max="sudo cpupower frequency-set -u 3.4GHz"
alias min="sudo cpupower frequency-set -u 1GHz"

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
