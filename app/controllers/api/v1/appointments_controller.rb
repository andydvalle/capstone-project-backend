class Api::V1::AppointmentsController < ApplicationController
    def index
        appointments =Appointment.all
        render json: appointments.to_json
    end
end
