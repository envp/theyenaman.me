require 'bundler/setup'
require 'sass/plugin/rack'

Bundler.require

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
$:.unshift File.dirname(__FILE__)

require 'app'

use Rack::Deflater

use Rack::Static, :urls => ['/stylesheets', '/js', '/fonts', '/images', '/files'], :root => 'public'

# Sass::Plugin.options[:style] = :compressed
use Sass::Plugin::Rack

run Rack::URLMap.new "/" => Website::Home