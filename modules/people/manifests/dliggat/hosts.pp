class people::dliggat::hosts {

  notify { 'class people::dliggat::hosts declared': }

  # For local network DHCP reservations.
  host { "tilde":
    ip => "10.0.1.3",
  }
  host { "mite":
    ip => "10.0.1.2",
  }
  host { "boggle":
    ip => "10.0.1.4",
  }

}
