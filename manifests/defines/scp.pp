# == Define: backhub::scp
#
define backhub::scp (
  $hostorip,
  $source,
  #$repeat,
  ) {
  
  #schedule { 'everyday':
  #  period => daily,
  #  range  => "2-4"
  #}
  
  # Get configs with scp using geoffwilliams/scp module
  scp { $hostorip:
    ensure => present,
    source => $source,
    #repeat => $schedule,
  }
  
}
