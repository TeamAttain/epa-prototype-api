require 'rails_helper'

describe Activity do
  describe '.create' do
    subject { Activity.new(location: 'junk') }

    it 'validates that location is either inside our outside' do
      expect(subject).to be_invalid
      expect(subject.errors.keys).to include :location
    end
  end

  describe '.gen_bogus_data!' do
    before do
      create_list(:air_quality_observation, 10, zip_code: AirnowApiAdapter.observed_zip_codes.sample)
    end

    it 'will generate bogus data for observed areas' do
      expect { Activity.gen_bogus_data! }.to change { Activity.count }
    end
  end
end
