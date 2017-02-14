name             'site-notestypo3org'
maintainer       'Steffen Gebert'
maintainer_email 'steffen.gebert@typo3.org'
license          'Apache2'
description      'Installs/Configures site-notestypo3org'
long_description 'Installs/Configures site-notestypo3org'
version          IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.0.1'

depends "t3-base",         "~> 0.2.0"

depends "etherpad-lite",   "~> 2.0.0"
depends "t3-mysql",        "~> 0.1.0"

depends "build-essential", "= 4.0.0"
depends "chef_nginx",      "= 5.0.2"
depends "logrotate"        # pinned in t3-base
