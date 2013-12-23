class people::adamgoehner {

  notify { 'class people::adamgoehner declared': }

  git::config::global {
    'user.name':     value => 'Adam Goehner';
    'user.email':    value => 'adam.goehner@gmail.com';
    'core.editor':   value => 'vim';
    'color.ui':      value => 'true';

    'alias.b':       value => 'branch';
    'alias.ch':      value => 'checkout';
    'alias.cm':      value => 'checkout master';
    'alias.co':      value => 'commit';
    'alias.s':       value => 'status -sb';
    'alias.l1':      value => 'log --oneline -n 10';
    'alias.pom':     value => 'push -u origin master';
    'alias.w':       value => 'browse';
  }

  package {
    [
      'tree'
    ]:
  }

  ruby::gem {
    "bundler for 1.9.3":
      gem     => 'bundler',
      ruby    => '1.9.3',
      version => '~> 1.3.5';

    "bundler for 2.0.0":
      gem     => 'bundler',
      ruby    => '2.0.0',
      version => '~> 1.3.5';

    "rails for 1.9.3":
      gem     => 'rails',
      ruby    => '1.9.3',
      version => '~> 3.2.13';

    "rspec for 1.9.3":
      gem     => 'rspec',
      ruby    => '1.9.3',
      version => '~> 2.13.0';

    "pry for 1.9.3":
      gem     => 'pry',
      ruby    => '1.9.3',
      version => '~> 0.9.12';

    "debugger for 1.9.3":
      gem     => 'debugger',
      ruby    => '1.9.3',
      version => '~> 1.6.1';
  }

  include plyfe::optional::basic_dotfiles

}
