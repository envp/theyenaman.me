#\ -s puma

require 'bundler/setup'
Bundler.require

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
$:.unshift File.dirname(__FILE__)

require 'app'

use Rack::Deflater
run Rack::URLMap.new "/" => Website::Home