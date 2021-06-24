# typed: false
# frozen_string_literal: true

class Image < ApplicationRecord

  def beats(other)
    k = 30
    my_expectation = 1 / (1 + 10**((other.rating - rating) / 400.0))
    other_expectation = 1 - my_expectation

    self.rating = rating + (k * my_expectation)
    other.rating = other.rating - (k * other_expectation)

    self.wins += 1
    self.matches += 1

    other.losses += 1
    other.matches += 1

    save!
    other.save!
  end
end
