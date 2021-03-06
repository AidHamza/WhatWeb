##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Covalent-Enterprise-Ready-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2011-05-12
  "Andrew Horton", # v0.2 # 2016-04-19 # Moved patterns from passive function to matches[]. 
]
version "0.2"
description "The Covalent Enterprise Ready Server is a stand-alone, manually-managed instance of an Apache 2.0 Web server with Covalent extensions."
website "http://www.covalent.net/resource/documentation/ers/2.1.0/HTML/InstallGuide/installers.html"
# Product guide: http://www.covalent.net/resource/documentation/ers/2.4.0/ers-2.4.0-ProductGuide.pdf

# ShodanHQ results as at 2011-05-12 #
# 160 for CovalentSNMP
# 62 for secured_by_Covalent

matches [
	# Version Detection # HTTP Server Header
	{ :search=>"headers[server]", :version=>/secured_by_Covalent\/([^\s]+)/ },

	# CovalentSNMP
	{ :search=>"headers[server]", :version=>/(CovalentSNMP\/[^\s]+)/ },

]

end

