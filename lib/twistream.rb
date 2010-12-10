# external require
require 'uri'
require 'logger'
require 'yajl/http_stream'

# gem files
require 'twistream/event'
require 'twistream/event_handler'
require 'twistream/client'

module TwiStream
  class AuthenticationError < ::StandardError; end
  LOG = ::Logger.new(STDOUT)
  LIBPATH = ::File.expand_path(::File.dirname(__FILE__)) + ::File::SEPARATOR
  PATH = ::File.dirname(LIBPATH) + ::File::SEPARATOR
  VERSION = ::File.exist?(PATH + 'VERSION') ? ::File.read(PATH+'VERSION') : '0'
end