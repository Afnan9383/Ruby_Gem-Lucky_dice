# frozen_string_literal: true

require_relative "lucky_dice/version"

module LuckyDice
  class Error < StandardError; end

  # Always roll 2 dice
  DICE = 2

  # Every die has 6 sides
  SIDES = 6

  # Roll 2 dice and show each one, like [3, 6]
  def self.roll_each
    Array.new(DICE) { rand(1..SIDES) }
  end

  # Give 2 numbers (each 1 to 6), roll 2 dice,
  # and check if the totals match
  def self.guess(first, second)
    [first, second].each do |number|
      unless number.is_a?(Integer) && number.between?(1, SIDES)
        raise Error, "Each number must be a whole number from 1 to 6"
      end
    end

    dice = roll_each
    your_total = first + second
    dice_total = dice.sum

    {
      your_numbers: [first, second],
      your_total: your_total,
      dice: dice,
      dice_total: dice_total,
      win: your_total == dice_total
    }
  end
end