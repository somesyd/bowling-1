# frozen_string_literal: true

# TDD exercise following John Oerter's Youtube video: "Bowling Game Kata in JavaScript"

class BowlingGame
  def initialize
    @running_score = 0
    @rolls = []
  end

  def roll(pins)
    @rolls.push(pins)
  end

  def score
    score = 0
    roll_index = 0
    frames = 10

    frames.times do
      frame_score = @rolls[roll_index] + @rolls[roll_index + 1]
      if spare?(frame_score)
        score += spare_bonus(roll_index)
      else
        score += frame_score
      end
      roll_index += 2
    end
    score
  end

  def spare?(frame_score)
    frame_score == 10
  end

  def spare_bonus(roll_index)
    10 + @rolls[roll_index + 2]
  end
end
