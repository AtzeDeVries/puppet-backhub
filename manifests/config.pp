# == Class: backhub:config
#
class backhub::config {

# Setup logrotate using module yo61/logrotate
  logrotate::rule { 'backhub':
    path         => '/home/backhub/*',
    rotate       => 5,
    rotate_every => 'week',
  }
  
}
