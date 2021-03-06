require 'rails_helper'

describe Message do
  describe '#create' do
    context 'can save' do
      it "is valid with content" do
        message = build(:message, image: "")
        expect(message).to be_valid
      end
      it "is valid with a image" do
        expect(build(:message, content: nil)).to be_valid
      end
      it "is valid with a content & image" do
        message = build(:message)
        expect(message).to be_valid
      end
    end
    context "can't save" do
      it "is invalid without  image and content" do
        message = build(:message, content: "", image: "")
        message.valid?
        expect(message.errors[:content]).to include("を入力してください")
      end
      it "is invalid without group_id" do
        message = build(:message, group_id: nil)
        message.valid?
        expect(message.errors[:group]).to include("を入力してください")
      end
      it "is invalid without user_id" do
        message = build(:message, user_id: nil)
        message.valid?
        expect(message.errors[:user]).to include("を入力してください")
      end
    end
  end
end