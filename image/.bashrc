# shellcheck disable=SC2148
# If not running interactively, don't do anything
[ -z "${PS1:-}" ] && return
# shellcheck disable=SC1091
[ -n "${PS1:-}" ] && [ -r "${HOME}/.bash_profile" ] && source "${HOME}/.bash_profile"
