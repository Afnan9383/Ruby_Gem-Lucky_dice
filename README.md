# LuckyDice 🎲🎲

A dice guessing game in Ruby!

Pick 2 numbers from 1 to 6. LuckyDice rolls 2 dice.
If the dice total matches your total, you win!

## Install

    gem install lucky_dice

## How to use

```ruby
require "lucky_dice"

LuckyDice.guess(3, 4)
```

## What you get back

```ruby
{
  your_numbers: [3, 4],
  your_total: 7,
  dice: [5, 2],
  dice_total: 7,
  win: true
}
```

- `your_numbers`: the 2 numbers you picked
- `your_total`: your numbers added up
- `dice`: what the 2 dice showed
- `dice_total`: the dice added up
- `win`: `true` if the totals match, `false` if not

## Rules

- Each number must be a whole number from 1 to 6.
- Only the totals need to match, not the exact numbers.
  For example, you pick 3 and 4 (total 7), the dice show 5 and 2 (total 7). You win!

## Tip

7 is the luckiest total, because 2 dice can make 7 in the most ways.

## License

MIT (Massachusetts Institute of Technology) License. Free for anyone to use.