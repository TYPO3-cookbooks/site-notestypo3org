#
# Cookbook Name:: site-notestypo3org
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#

#########################
# SSL certs
#########################
include_recipe "ssl_certificates"

ssl_certificate node[:'site-notestypo3org'][:proxy][:ssl_certificate] do
  ca_bundle_combined true
end

node.override[:etherpadlite][:proxy][:ssl_cert_path] = node[:ssl_certificates][:path] + "/" + node[:'site-notestypo3org'][:proxy][:ssl_certificate] + ".crt"
node.override[:etherpadlite][:proxy][:ssl_key_path]  = node[:ssl_certificates][:path] + "/" + node[:'site-notestypo3org'][:proxy][:ssl_certificate] + ".key"


#########################
# upstream
#########################
include_recipe "etherpad-lite"

#########################
# logrotate
#########################

logrotate_app "etherpad-lite" do
  path "/var/log/etherpad-lite/etherpad-lite.log"
  postrotate "restart etherpad-lite >/dev/null 2>&1 || true"
end