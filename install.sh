#!/usr/bin/env bash

set -e

g_bashrc="${HOME}/.bashrc"
g_virtualenvs_dir="${HOME}/.virtualenvs"
g_virtualenvwrapper_sh="/usr/local/bin/virtualenvwrapper.sh"

mkdir -p $g_virtualenvs_dir

echo "Adding virtualenvwrapper support to bashrc"
if [[ -f $g_bashrc ]]; then
    echo "" >> $g_bashrc
    echo "# Virtualenvwrapper" >> $g_bashrc
    echo "export WORKON_HOME=${g_virtualenvs_dir}" >> $g_bashrc
    echo "source ${g_virtualenvwrapper_sh}" >> $g_bashrc
fi
