class profiles::webserver {
  class { 'webserver':
    env1 => 'production',
  }
}
