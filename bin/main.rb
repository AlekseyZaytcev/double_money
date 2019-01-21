require 'rubygems'
require 'bundler/setup'
Bundler.require(:default, :develop)

ROOT_PATH = File.expand_path(File.join(File.dirname(__FILE__), '..'))
files = Dir.glob(File.join(ROOT_PATH, 'app', '**', '*.rb'))

files.each { |file| require file }

MainController.new.run
