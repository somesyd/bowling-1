# frozen_string_literal: true

# TDD exercise following John Oerter's Youtube video: "Bowling Game Kata in JavaScript"

require 'bowling'

RSpec.describe BowlingGame do
  subject { BowlingGame.new }

  def roll_many(pins, rolls)
    rolls.times { subject.roll(pins) }
  end

  it 'should return 0 for a game of all zeros' do
    roll_many(0, 20)
    expect(subject.score).to eq(0)
  end

  it 'should return 20 for a game of all ones' do
    roll_many(1, 20)
    expect(subject.score).to eq(20)
  end

  it 'should return the correct score when a spare is rolled' do
    2.times { subject.roll(5) }
    subject.roll(3)
    roll_many(0, 17)
    expect(subject.score).to eq(16)
  end
end


