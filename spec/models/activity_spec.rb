require 'rails_helper'

describe Activity do
  describe 'create' do
    subject { Activity.new(location: 'junk') }

    it 'validates that location is either inside our outside' do
      expect(subject).to be_invalid
      expect(subject.errors.keys).to include :location
    end
  end
end
