require 'rails_helper'

RSpec.describe "vehicle_config_required_packages#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_required_packages", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_required_packages',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigRequiredPackage.count }.by(1)
      vehicle_config_required_package = VehicleConfigRequiredPackage.last

      assert_payload(:vehicle_config_required_package, vehicle_config_required_package, json_item)
    end
  end
end
