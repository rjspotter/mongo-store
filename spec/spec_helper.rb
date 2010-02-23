$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'mongo-store'
require 'spec'
require 'spec/autorun'
require 'rack/mock'
require 'rack/response'
require 'thread'

Spec::Runner.configure do |config|
  config.before do
    Mongo::Connection.new.db('rack').collection('rack-sessions').drop
  end
end
