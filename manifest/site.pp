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
