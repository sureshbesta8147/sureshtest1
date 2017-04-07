# Class: 
#
#
class puppetpractice::service inherits puppetpractice::params {

   #$pack_name = $facts['os']['family'] ? {
   #    'RedHat' => 'httpd',
   #    'Debian' => 'apache2',
   #}


    service { $puppetpractice::params::pack_name:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
        # pattern    => 'name',
    }

}   