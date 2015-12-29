name             'site-notestypo3org'
maintainer       'Steffen Gebert'
maintainer_email 'steffen.gebert@typo3.org'
license          'Apache2'
description      'Installs/Configures site-notestypo3org'
long_description 'Installs/Configures site-notestypo3org'
version          '0.2.0'

depends "t3-mysql",        "~> 0.1.0"

depends "etherpad-lite",   "~> 0.2.0"
depends "ssl_certificates"
depends "logrotate",       "= 1.8.0"

