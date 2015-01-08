######         ######
##  Configure R10k ##
######         ######

## Borrowed from Gary Larizza.  Original file can be found here:
## https://github.com/glarizza/puppet_repository

##  This manifest requires the zack/R10k module and will attempt to
##  configure R10k according to my blog post on directory environments.
##  Beware! (and good luck!)

class { 'r10k':
  version           => '1.4.0',
  sources           => {
    'puppet' => {
      'remote'  => 'https://github.com/rlyon/puppet-control.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    }
  },
  purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => false,
}
