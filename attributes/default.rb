default[:etherpadlite][:proxy][:hostname] = "notes.typo3.org"
default[:etherpadlite][:proxy][:alias_hostnames] = [
    "pad.typo3.org",
    "etherpad.typo3.org",
]

default[:etherpadlite][:settings][:defaultPadText] = "Welcome to TYPO3's Etherpad Lite!\\n\\nThis pad text is synchronized as you type, so that everyone viewing this page sees the same text. This allows you to collaborate seamlessly on documents!\\n\\nPlease use this service only for community-related work!\\n\\n"

# default[:etherpadlite][:settings][:apikey] comes from chef-vault

default[:etherpadlite][:plugins] = {
  'ep_headings' => '0.1.6',
  'ep_adminpads' => nil,
  'ep_author_hover' => nil,
  'ep_draw' => nil,
  # 'ep_email_notifications' => nil, # requires config
  'ep_ether-o-meter' => nil,
  'ep_fileupload' => nil,
  'ep_historicalsearch' => nil,
  'ep_markdown' => nil,
  # 'ep_markdownify' => nil,
  # 'ep_message_all' => nil,
  # 'ep_offline_edit' => nil,
  # 'ep_pad_tracker' => nil,
  'ep_previewimages' => nil,
  'ep_print' => nil,
  'ep_prompt_for_name' => nil,
  'ep_redminewiki' => nil,
  # 'ep_rss' => nil,
  # 'ep_scrollto' => nil,
  # 'ep_search' => nil, # sieht scheiße aus
  #### 'ep_set_title_on_pad' => nil,
  'ep_sociallinks' => nil,
  'ep_spellcheck' => nil,
  'ep_syntaxhighlighting' => nil,
  'ep_table_of_contents' => nil,
  'ep_tables' => nil,
  'ep_tasklist' => nil,
  'ep_twitter_links' => nil,
  # 'ep_visual_slider' => nil,
  'ep_wrap' => nil
}

default[:'site-notestypo3org'][:proxy][:ssl_certificate] = "wildcard.typo3.org"
