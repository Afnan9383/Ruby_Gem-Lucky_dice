# frozen_string_literal: true

require_relative "lib/lucky_dice/version"

Gem::Specification.new do |spec|
  spec.name    = "lucky_dice"
  spec.version = LuckyDice::VERSION
  spec.authors = ["Afnan"]
  spec.email   = ["afnan@ontash.net"]

  spec.summary     = "A dice guessing game: pick 2 numbers and see if the dice match your total."
  spec.description = "LuckyDice lets you pick 2 numbers from 1 to 6, rolls 2 dice, and tells you if the dice total matches your total."
  spec.homepage    = "https://github.com/Afnan9383/lucky_dice"
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"]      = spec.homepage

  spec.files         = Dir["lib/**/*.rb", "README.md", "LICENSE.txt"]
  spec.require_paths = ["lib"]
end