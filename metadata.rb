name             'site-notestypo3org'
maintainer       'Steffen Gebert'
maintainer_email 'steffen.gebert@typo3.org'
license          'Apache2'
description      'Installs/Configures site-notestypo3org'
long_description 'Installs/Configures site-notestypo3org'
version          '0.3.1'

depends "t3-base",         "~> 0.2.0"

depends "t3-mysql",        "~> 0.1.0"
depends "build-essential", "= 4.0.0"
depends "etherpad-lite",   "~> 1.0.0"
depends "logrotate"        # pinned in t3-base
depends "ssl_certificates"

depends "chef_nginx", "= 5.0.2"
