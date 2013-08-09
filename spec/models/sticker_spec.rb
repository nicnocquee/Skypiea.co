require 'spec_helper'

describe Sticker do
  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is not idiomatically correct.
    @sticker = Sticker.new(name: "Sticker name", user_id: user.id)
  end
  subject { @sticker }

  it { should respond_to(:name) }
  it { should respond_to(:user_id) }
  it { should respond_to(:description)}
  it { should respond_to(:number_of_stickers)}
  it { should respond_to(:views)}
  it { should respond_to(:likes)}
  it { should respond_to(:price)}
  it { should respond_to(:file)}
  it { should respond_to(:screenshot)}
end
