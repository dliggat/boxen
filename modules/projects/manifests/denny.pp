class projects::denny {

  notify { 'class projects::denny declared': }

  boxen::project { 'denny':
    mysql         => true,
    redis         => false,
    ruby          => '2.0.0',
    dir           => "${boxen::config::srcdir}/denny",
    source        => 'plyfe/denny',
  }

}
