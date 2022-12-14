set -x JAVA_HOME /usr/lib/jvm/java-11-openjdk

# the GUROBI envirnoment varaible
# set -x GUROBI_HOME /opt/gurobi901/linux64
# fish_add_path $GUROBI_HOME/bin 
# set -x LIBRARY_PATH $GUROBI_HOME/lib
# set -x LD_LIBRARY_PATH $GUROBI_HOME/lib

set -x CLASSPATH $LD_LIBRARY_PATH 
set -x CLASSPATH /opt/colt/lib/colt.jar $CLASSPATH
set -x CLASSPATH /opt/colt/lib/concurrent.jar $CLASSPATH

## Setting python
set -x PYTHONPATH /usr/lib/python2.7/site-packages
set -x PYTHONPATH /usr/lib/python3.8/site-packages $PYTHONPATH

# Appending anaconda at PYTHONPATH, hoping the system will try
# to use first the python env before anaconda
# set -x PYTHONPATH $PYTHONPATH /home/fabiolusha/Programs/anaconda/bin/python

# set texlive env
#set -x $PATH /usr/share/texmf-dist/scripts/texlive

# set default editor
set -x VISUAL nvim
set -x EDITOR $VISUAL

# rebar3
#set -x $PATH /home/fabiolusha/.cache/rebar3/bin 

# noe4j env
set -x NEO4J_HOME $HOME/Programs/neo4j-community-4.4.11/

# Spark config
set -x SPARK_HOME /opt/apache-spark


alias max="sudo cpupower frequency-set -u 3.4GHz"
alias min="sudo cpupower frequency-set -u 1GHz"

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
