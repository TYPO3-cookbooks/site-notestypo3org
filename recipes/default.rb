#
# Cookbook Name:: site-notestypo3org
# Recipe:: default
#
# Copyright (C) 2014
#
#
#

include_recipe 't3-base'
include_recipe 't3-mysql::backup'

#########################
# upstream
#########################
include_recipe 'etherpad-lite'

#########################
# logrotate
#########################

logrotate_app 'etherpad-lite' do
  path '/var/log/etherpad-lite/etherpad-lite.log'
  postrotate '/etc/init.d/etherpad-lite restart > /dev/null 2>&1 || true'
  options ['dateext', 'missingok', 'delaycompress', 'notifempty']
  rotate 7
end
