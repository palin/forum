require 'spec_helper'

describe Post do
  context 'validation' do
    it 'is not valid without title' do
      expect(Post.new(content: 'Content')).to be_invalid
    end

    it 'is not valid without content' do
      expect(Post.new(title: 'Title')).to be_invalid
    end
  end
end
