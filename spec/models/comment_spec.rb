require 'spec_helper'

describe Comment do
  let(:user) { FactoryGirl.create(:user) }
  let(:sticker) { FactoryGirl.create(:sticker) }
  before do
    @comment = Comment.new(comment: "A comment on a sticker by a user", user_id: user.id, sticker_id:sticker.id)
  end
  subject { @comment }

  it { should respond_to(:comment) }
  it { should respond_to(:user_id) }
  it { should respond_to(:sticker_id)}
end
