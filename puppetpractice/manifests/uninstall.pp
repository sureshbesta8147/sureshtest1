class puppetpractice::uninstall inherits puppetpractice::params {
   #$pack_name = $facts['os']['family'] ? {
   #    'RedHat' => 'httpd',
   #    'Debian' => 'apache2',
   #}

   package { $puppetpractice::params::pack_name:
       ensure => purged,
       
   }
}