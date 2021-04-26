class { 'apt':
  update => {
    frequency => 'daily',
  },
}

apt::source { 'debian_unstable':
  location => 'http://httpredir.debian.org/debian/',
  release  => 'unstable',
  repos    => 'main contrib non-free',
  pin      => '-10',
  include  => {
    'src' => true,
    'deb' => true,
  },
}
