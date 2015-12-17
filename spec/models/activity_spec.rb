require 'rails_helper'

describe Activity do
  describe 'create' do
    it 'validates that location is either inside our outside' do
      expect(Activity.new(location: 'junk')).to be_invalid
      expect(Activity.new(location: 'inside')).to be_valid
      expect(Activity.new(location: 'outside')).to be_valid
    end
  end
end
