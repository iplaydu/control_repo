node default {
  file {'/root/README':
    ensure  => file,
    content => 'deploy r10k deploy environment -p and test',
    owner   => 'root',    
  }
}
node master 'master.puppet.vm' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
