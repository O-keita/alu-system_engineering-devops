# Install the augeas providers
package { 'augeas-tools':
  ensure => installed,
}

# Configure ssh client
augeas { 'ssh_config_identity_file':
  context => '/files/etc/ssh/ssh_config',
  changes => [
    'set Host/*[.="*"]/IdentityFile ~/.ssh/school',
  ],
}

augeas { 'ssh_config_password_authentication':
  context => '/files/etc/ssh/ssh_config',
  changes => [
    'set Host/*[.="*"]/PasswordAuthentication no',
  ],
}
