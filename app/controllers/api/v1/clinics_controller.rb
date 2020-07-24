class Api::V1::ClinicsController < ApplicationController
    def index
        clinics = Clinic.all
        render json: clinics.to_json(include: [:appointments, :patient])
    end

    def new
        clinic = Clinic.new
    end

    def create
        clinic = Clinic.create(clinic_params)
        render json: clinic.to_json(include: [:appointments, :patient])
    end

    def edit
        clinic = Clinic.find(params[:id])
    end

    def update
        clinic = Clinic.find(params[:id])
        clinic.update(clinic_params)
        render json: clinic.to_json
    end
    
    def destroy
        clinic = Clinic.find(params[:id])
        clinic.destroy
        render json: clinic.to_json
    end    

    private
    
    def clinic_params
        params.require(:clinic).permit(:name, :practitioner, :address, :address2, :city, :state, :zip, :number, :notes, :patient_id)
    end

end
