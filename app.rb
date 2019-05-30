# frozen_string_literal: true

$:.unshift File.expand_path("./../lib", __FILE__)

require 'colorize'

require "initializer.rb"
require "video.rb"
require "web.rb"
require "graphics.rb"

puts "App launched ♥".colorize(:magenta)

Initializer.new
