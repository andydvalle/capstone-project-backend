class Api::V1::MedicationsController < ApplicationController
    def index
        medications = Medication.all
        render json: medications.to_json(include: [:patient])
    end

    def new
        medication = Medication.new
    end

    def create
        medication = Medication.create(medication_params)
        render json: medication.to_json(include: [:patient])
    end

    private
    
    def medication_params
        params.require(:medication).permit(:name_route, :strength, :instructions, :notes, :onSun, :onMon, :onTue, :onWed, :onThu, :onFri, :onSat, :patient_id)
    end
end
