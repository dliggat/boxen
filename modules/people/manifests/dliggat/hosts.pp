class people::dliggat::hosts {

  notify { 'class people::dliggat::hosts declared': }

  # For local network DHCP reservations.
  host { "tilde":
    ip => "192.168.1.100",
  }
  host { "mite":
    ip => "192.168.1.147",
  }

}
