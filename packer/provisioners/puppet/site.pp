$iis_features = ['Web-WebServer','Web-Scripting-Tools']

iis_feature { $iis_features:
  ensure => 'present',
}

# Delete the default website to prevent a port binding conflict.
iis_site {'Default Web Site':
  ensure  => absent,
  require => Iis_feature['Web-WebServer'],
}

iis_site { 'mvc-app':
  ensure          => 'started',
  physicalpath    => 'c:\\inetpub\\mvc-app',
  applicationpool => 'DefaultAppPool',
  require         => [
    File['mvc-app'],
    Iis_site['Default Web Site']
  ],
}

file { 'mvc-app':
  ensure => 'directory',
  path   => 'c:\\inetpub\\mvc-app',
}