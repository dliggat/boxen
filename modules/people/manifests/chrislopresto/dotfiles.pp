class people::chrislopresto::dotfiles {

  notify { 'class people::chrislopresto::dotfiles declared': }

  repository {
    "dotfiles":
      source   => 'chrislopresto/dotfiles',
      path     => "${::boxen_srcdir}/dotfiles";
  }

  $homedir = "/Users/${::boxen_user}"

  file { "${homedir}/.gvimrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/gvimrc",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/.vimrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/vimrc",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/.zshrc":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/zshrc",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/.gitignore":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/gitignore",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/Library/Preferences/com.manytricks.Moom.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.manytricks.Moom.plist",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/Library/Preferences/com.googlecode.iterm2.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.googlecode.iterm2.plist",
    require => Repository["dotfiles"],
  }

  file { "${homedir}/Library/Preferences/com.runningwithcrayons.Alfred-Preferences.plist":
    ensure  => link,
    target  => "${::boxen_srcdir}/dotfiles/plists/com.runningwithcrayons.Alfred-Preferences.plist",
    require => Repository["dotfiles"],
  }

}
