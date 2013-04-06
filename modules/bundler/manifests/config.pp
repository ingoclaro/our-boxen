class bundler::config {
  require boxen::config

  $confdir = "/Users/${::luser}/.bundle"

  # anchor { [$confdir]: }
}
