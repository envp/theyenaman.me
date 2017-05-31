require 'bundler/setup'
require 'sass/plugin/rack'

Bundler.require

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
$:.unshift File.dirname(__FILE__)

require 'app'

use Rack::Deflater
use Rack::ContentLength

use Rack::Static, :urls => ['/stylesheets', '/js', '/fonts', '/images', '/files'], :root => 'public'

use Sass::Plugin::Rack
Sass::Plugin.options[:style] = :compressed

run Rack::URLMap.new "/" => Website::Home
