# Class: 
#
#
class puppetpractice::homepage(
    $file_local_name="index",
    $homepage_location="/var/www/html/index.html"
    ) inherits puppetpractice::params{

    file { $homepage_location:
        ensure => file,
       # source => 'puppet:///modules/index.html';
       content => file("puppetpractice/${file_local_name}.html"),
       notify =>  Service["${puppetpractice::params::pack_name}"]
    }

    #Resource Relationships

     #$pack_name = $facts['os']['family'] ? {
     #  'RedHat' => 'httpd',
     #  'Debian' => 'apache2',
   #}


         
}