ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
require 'rubygems'
require 'uri'
require 'pathname'
require 'pg'
require 'active_record'
require 'logger'
require 'sinatra'
require 'sinatra/assetpack'
require 'sinatra/contrib'
require 'sinatra/reloader' if development?
require 'haml'
require 'sass'

APP_ROOT = Pathname.new(File.expand_path('../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

require APP_ROOT.join('app')
require APP_ROOT.join('database')