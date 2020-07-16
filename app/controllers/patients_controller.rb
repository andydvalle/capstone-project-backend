class PatientsController < ApplicationController
    def index
        patients = Patient.all
        render json: patients.to_json
    end
end
