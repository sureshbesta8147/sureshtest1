# Class: 
#
#
class puppetpractice::install inherits puppetpractice::params {
    # resourceapache:install

      package { $puppetpractice::params::pack_name:
       ensure => installed,
       
   }
}

