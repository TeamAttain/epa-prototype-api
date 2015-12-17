require 'rails_helper'

describe ActivitiesController do
  describe 'POST: /api/activities' do
    let(:post_data) do
      {
        activities: [
          {
            activityId: 51_007,
            activityParentId: 90_019,
            calories: 230,
            description: "7mph",
            distance: 2.04,
            duration: 1_097_053,
            hasStartTime: true,
            isFavorite: true,
            logId: 1_154_701,
            name: "Treadmill, 0% Incline",
            startTime: "00:25",
            location: 'outside',
            steps: 3_783
          }
        ]
      }
    end

    it 'will create activities from array' do
      expect do
        post :create, post_data
      end.to change { Activity.count }.by(1)
    end

    context 'multiple activities' do
      context 'when one of those activities is invalid' do
        let(:post_data) do
          {
            activities: [
              {
                activityId: 51_007,
                activityParentId: 90_019,
                calories: 230,
                description: "7mph",
                distance: 2.04,
                duration: 1_097_053,
                hasStartTime: true,
                isFavorite: true,
                logId: 1_154_701,
                name: "Treadmill, 0% Incline",
                startTime: "00:25",
                location: 'outside',
                steps: 3_783
              },
              {
                activityId: 51_007,
                activityParentId: 90_019,
                calories: 230,
                description: "7mph",
                distance: 2.04,
                duration: 1_097_053,
                hasStartTime: true,
                isFavorite: true,
                logId: 1_154_701,
                name: "Treadmill, 0% Incline",
                startTime: "00:25",
                location: 'junk',
                steps: 3_783
              }
            ]
          }
        end
        it 'will create none of the activities' do
          expect do
            post :create, post_data
          end.to_not change { Activity.count }
          expect(
            JSON.parse(response.body)
          ).to eq("location" => ["is not either 'inside' or 'outside'"])
        end
      end
    end
  end
end
