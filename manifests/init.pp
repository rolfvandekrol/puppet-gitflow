# Install git-flow tool
#
# Examples
#
#   include git-flow

class git-flow {
  include homebrew
  
  $version = '0.4.1-boxen1'
  
  homebrew::formula { 'git-flow':
    before => Package['boxen/brews/git-flow']
  }
  
  package { 'boxen/brews/git-flow':
    ensure => $version
  }
}