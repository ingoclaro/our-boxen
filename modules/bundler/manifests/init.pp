class bundler {
  require boxen::config
  require bundler::config

  file { $bundler::config::confdir:
    ensure => directory,
    group   => 'staff',
    owner   => $::luser,
  }

  file { "${bundler::config::confdir}/config":
    source  => 'puppet:///modules/bundler/config',
    group   => 'staff',
    owner   => $::luser,
    require => File[$bundler::config::confdir]
  }
}
