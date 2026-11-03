# frozen_string_literal: true

RSpec.describe LuckyDice do
  it "has a version number" do
    expect(LuckyDice::VERSION).not_to be nil
  end

  it "always rolls 2 dice, each from 1 to 6" do
    dice = LuckyDice.roll_each
    expect(dice.length).to eq(2)
    expect(dice).to all(be_between(1, 6))
  end

  it "adds up your 2 numbers" do
    result = LuckyDice.guess(3, 4)
    expect(result[:your_total]).to eq(7)
  end

  it "adds up the 2 dice" do
    result = LuckyDice.guess(3, 4)
    expect(result[:dice_total]).to eq(result[:dice].sum)
  end

  it "says win only when the totals match" do
    result = LuckyDice.guess(3, 4)
    expect(result[:win]).to eq(result[:your_total] == result[:dice_total])
  end

  it "does not allow numbers bigger than 6" do
    expect { LuckyDice.guess(3, 9) }.to raise_error(LuckyDice::Error)
  end

  it "does not allow 0" do
    expect { LuckyDice.guess(0, 4) }.to raise_error(LuckyDice::Error)
  end

  it "does not allow words" do
    expect { LuckyDice.guess("three", 4) }.to raise_error(LuckyDice::Error)
  end
end