# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
dbt_run_changed() {
    children=$1
    models=$(git diff --name-only | grep '\.sql$' | awk -F '/' '{ print $NF }' | sed "s/\.sql$/${children}/g" | tr '\n' ' ')
    echo "Running models: ${models}"
    dbt run --models $models
}
export -f dbt_run_changed

# Lowercased, shortened to 63 bytes, and with everything except 0-9 and a-z replaced with '-'.
# No leading or trailing '-'. Useful with URLs, host names, and domain names.
slugify () {
  next=${1//+([^A-Za-z0-9])/-}
  next=${next:0:63}
  next=${next,,}
  next=${next#-}
  next=${next%-}
  echo "$next"
}
export -f slugify
