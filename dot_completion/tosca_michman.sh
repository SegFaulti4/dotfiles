alias michman_dummy="docker compose -f docker-compose.base.yml"
alias michman_dummy_httpd="michman_dummy -f docker-compose.httpd.yml"
alias michman_keystone="docker compose -f docker-compose.base.yml -f docker-compose.keystone.yml"
alias michman_keystone_httpd="michman_keystone -f docker-compose.httpd.yml"
alias michman_keycloak="docker compose -f docker-compose.base.yml -f docker-compose.keycloak.yml"
alias michman_keycloak_httpd="michman_keycloak -f docker-compose.httpd.yml"
alias michman_odoo="docker compose -f docker-compose.base.yml -f docker-compose.odoo.yml"
alias michman_odoo_httpd="michman_odoo -f docker-compose.httpd.yml"

alias michman_dummy_dev="michman_dummy -f docker-compose.dev.yml"
alias michman_dummy_dev_httpd="michman_dummy_dev -f docker-compose.httpd.yml"
alias michman_keystone_dev="michman_keystone -f docker-compose.dev.yml"
alias michman_keystone_dev_httpd="michman_keystone_dev -f docker-compose.httpd.yml"
alias michman_keycloak_dev="michman_keycloak -f docker-compose.dev.yml"
alias michman_keycloak_dev_httpd="michman_keycloak_dev -f docker-compose.httpd.yml"
alias michman_odoo_dev="michman_odoo -f docker-compose.dev.yml"
alias michman_odoo_dev_httpd="michman_odoo_dev -f docker-compose.httpd.yml"


if [[ -n "$BASH" ]];then
  COMPLETE_ALIAS_PATH=~/.local/share/complete_alias
  if [ ! -f $COMPLETE_ALIAS_PATH ]; then
    curl https://raw.githubusercontent.com/cykerway/complete-alias/master/complete_alias -o $COMPLETE_ALIAS_PATH
  fi
  source $COMPLETE_ALIAS_PATH
  complete -F _complete_alias \
    michman_dummy michman_dummy_httpd michman_dummy_dev michman_dummy_dev_httpd \
    michman_keystone michman_keystone_httpd michman_keystone_dev michman_keystone_dev_httpd \
    michman_keycloak michman_keycloak_httpd michman_keycloak_dev michman_keycloak_dev_httpd \
    michman_odoo michman_odoo_httpd michman_odoo_dev michman_odoo_dev_httpd
fi
