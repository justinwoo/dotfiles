# clojurescript
export CLOJURESCRIPT_HOME="$HOME/Install/clojurescript"
export PATH="$CLOJURESCRIPT_HOME/script:$CLOJURESCRIPT_HOME/bin:$PATH"
# lein trampolines
LEIN_FAST_TRAMPOLINE=y
export LEIN_FAST_TRAMPOLINE
alias cljsbuild="lein trampoline cljsbuild $@"
