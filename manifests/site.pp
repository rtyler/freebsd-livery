

node default {
  group {
    'puppet' :
      ensure => present;
  }

  package {
    'zsh' :
      ensure   => present,
      provider => pkgng;
  }
}
