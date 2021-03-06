##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Loggix"
authors [
  "Brendan Coles <bcoles at gmail dot com>", # 2010-06-15
  # v0.2 # Updates matches and version detection. 
]
version "0.2"
description "Loggix is a really simple, lightweight PHP and SQlite driven weblog/cms engine."
website "http://loggix.gotdns.org/"

# 22 results for "Powered by Loggix" @ 2010-06-15

# Dorks #
dorks [
'"Powered by Loggix"'
]



matches [

# Default meta generator
{ :text=>'<meta name="generator" content="Loggix" />' },

# Version detection # Powered by text
{ :version=>/Powered by <a href="http:\/\/loggix.gotdns.org">Loggix<\/a> ver.([\d\.]+)<\/address>/ },

]

end

