filebucket { 'main':
  server => 'puppet',
  path => false
}

File { backup => 'main' }

Package { allow_virtual => false }

node default {
  # include base
}
