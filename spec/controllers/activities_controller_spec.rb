require 'rails_helper'

describe Api::ActivitiesController do
  let(:json) { JSON.parse(response.body) }
  describe 'GET: /api/activities' do
    let(:inside_activities) { Activity.where(location: 'inside').count }
    let(:outside_activities) { Activity.where(location: 'outside').count }

    before do
      @activities = create_list(:activity, 20)
    end

    it 'gets activities for a specific date' do
      get :index, date: Time.zone.now.strftime("%d/%m/%Y")
      expect(json['activities'].first['inside']).to eq inside_activities
      expect(json['activities'].first['outside']).to eq outside_activities
    end
  end

  describe 'POST: /api/activities' do
    let(:post_data) do
      {
        activities: [
          {
            lat: Faker::Address.latitude,
            lng: Faker::Address.longitude,
            location: 'outside',
          }
        ]
      }
    end

    it 'will create activities from array' do
      expect do
        post :create, post_data
      end.to change { Activity.count }.by(1)
    end

    context 'without lng and lat' do
      let(:post_data) do
        {
          activities: [
            {
              location: 'outside',
            }
          ]
        }
      end

      it 'demands lng and lat' do
        SmarfDoc.skip
        post :create, post_data
        expect(
          JSON.parse(response.body)
        ).to eq("lat" => ["can't be blank"], "lng" => ["can't be blank"])
      end
    end

    context 'multiple activities' do
      context 'when one of those activities is invalid' do
        let(:post_data) do
          {
            activities: [
              {
                lat: Faker::Address.latitude,
                lng: Faker::Address.longitude,
              },
              {
                lat: Faker::Address.latitude,
                lng: Faker::Address.longitude,
              }
            ]
          }
        end
        it 'will create none of the activities' do
          SmarfDoc.skip
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
