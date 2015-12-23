require 'rails_helper'

describe Api::ActivitiesController do
  let(:json) { JSON.parse(response.body) }

  describe 'GET: /api/activities' do
    let(:inside_activities) { Activity.where(location: 'inside').count }
    let(:outside_activities) { Activity.where(location: 'outside').count }

    context 'with zip code' do
      before do
        # Tokyo
        create_list(:activity, 20, lat: 35.6833, lng: 39.6833)
        # SB
        Activity.create(date: Time.zone.now, location: 'inside', lat: 35.9927473, lng: -78.9061682)
        Activity.create(date: Time.zone.now, location: 'outside', lat: 35.9927473, lng: -78.9061682)
      end

      it 'will only get activities near zip code' do
        get :index, date: Time.zone.now.strftime("%d/%m/%Y"), zip_code: '27701'
        expect(json['activities'].first['inside']).to eq 1
        expect(json['activities'].first['outside']).to eq 1
      end
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
          json
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
            json
          ).to eq("location" => ["is not either 'inside' or 'outside'"])
        end
      end
    end
  end
end
