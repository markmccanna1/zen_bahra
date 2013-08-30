require 'spec_helper'

describe Vote do
  let(:vote) { Vote.new(user_id: 1,
                        points: 1,
                        voteable_id: 1,
                        voteable_type: "question") }

  it { should belong_to(:user) }
  it { should belong_to(:voteable) }
  it { should validate_presence_of(:voteable_id) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:voteable_type) }

end
