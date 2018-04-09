default['etherpadlite']['git']['reference'] = '1.6.4'

default['etherpadlite']['proxy']['hostname'] = 'notes.typo3.org'
default['etherpadlite']['proxy']['alias_hostnames'] = [
    'pad.typo3.org',
    'etherpad.typo3.org',
]

default['etherpadlite']['settings']['defaultPadText'] = "Welcome to TYPO3's Etherpad Lite!\\n\\nThis pad text is synchronized as you type, so that everyone viewing this page sees the same text. This allows you to collaborate seamlessly on documents!\\n\\nPlease use this service only for community-related work!\\n\\n"

# default['etherpadlite']['settings']['apikey'] comes from chef-vault

default['etherpadlite']['plugins'] = {
  'ep_headings' => '0.1.6',
  'ep_adminpads' => '0.0.11',
  'ep_author_hover' => '0.0.17',
  'ep_ether-o-meter' => '0.0.2',
  'ep_historicalsearch' => '0.0.8',
  'ep_markdown' => '0.0.10',
  'ep_pad_activity_nofication_in_title' => '0.0.2',
  'ep_previewimages' => '0.0.9',
  'ep_print' => '0.0.9',
  'ep_prompt_for_name' => '0.1.0',
  'ep_redminewiki' => '0.0.1',
  'ep_rss' => '0.0.3',
  'ep_scrollto' => '0.0.6',
  'ep_set_title_on_pad' => '0.1.4',
  'ep_spellcheck' => '0.0.3',
  'ep_table_of_contents' => '0.1.15',
  'ep_twitter_links' => '0.0.3',
  'ep_wrap' => '0.0.4',
}

# chef_nginx: Don't use a custom Apt repository to install Nginx
default['nginx']['repo_source'] = 'distro'
