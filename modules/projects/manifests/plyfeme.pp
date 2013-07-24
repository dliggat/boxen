class projects::plyfeme {

  notify { 'class projects::plyfeme declared': }

  boxen::project { 'plyfeme':
    mysql         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'plyfe/plyfeme'
  }

  package {
    [
      'casperjs',
      'imagemagick',
      'qt',
      'redis'
    ]:
  }

  # TODO:
  # - Hosts file jigging
  # - Set up plyfedbdude user
  # - Set up socket for mysql
  # - Start mysql on reboot
  # - Start redis
  # - Install certificate
  # - (maybe) install plyfeec2 key
  # - Set up sensible sublime defaults - should be a user level module.


}
