twistream
=========

twistream is an simple client for hooking up with the twitter streaming api

Installation
------------

** stable release **

	gem install twistream

** beta release **

	gem install twistream --pre
	
Usage
-----

	auth = { :user => 'username', :pass => 'password' }
	@client = TwiStream::Client.new(auth)
	@client.sample do |status|
		puts status
	end

Disclaimer
----------

This gem is still very experimental and undocumented.
There could be major API changes between future versions
