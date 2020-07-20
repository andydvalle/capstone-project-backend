class Api::V1::ClinicsController < ApplicationController
    def index
        clinics = Clinic.all
        render json: clinics.to_json
    end
end
