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

    def edit
        medication = Medication.find(params[:id])
    end

    def update
        medication = Medication.find(params[:id])
        medication.update(medication_params)
        render json: medication.to_json
    end
    
    def destroy
        medication = Medication.find(params[:id])
        medication.destroy
        render json: medication.to_json
    end

    private
    
    def medication_params
        params.require(:medication).permit(:name_route, :strength, :instructions, :notes, :sunday, :tuesday, :monday, :thursday, :wednesday, :friday, :saturday, :patient_id)
    end
end
