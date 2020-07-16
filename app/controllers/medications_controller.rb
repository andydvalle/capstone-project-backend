class MedicationsController < ApplicationController
    def index
        medications = Medication.all
        render json: medications.to_json
    end
end
