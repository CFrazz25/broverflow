module Votable
  def total_votes
    self.votes.reduce(0) {|sum, vote| sum += vote.value}
  end
end
