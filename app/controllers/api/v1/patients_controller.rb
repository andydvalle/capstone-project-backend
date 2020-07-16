class Api::V1::PatientsController < ApplicationController
    def index
        patients = Patient.all
        render json: patients.to_json
    end
end
