class Api::V1::ConditionsController < ApplicationController
    def index
        conditions = Condition.all
        render json: conditions.to_json(include: [:patient])
    end

    def new
        condition = Condition.new
    end

    def create
        condition = Condition.create(condition_params)
        render json: condition.to_json(include: [:patient])
    end

    def edit
        condition = Condition.find(params[:id])
    end

    def update
        condition = Condition.find(params[:id])
        condition.update(condition_params)
        render json: condition.to_json
    end
    
    def destroy
        condition = Condition.find(params[:id])
        condition.destroy
        render json: condition.to_json
    end

    private
    
    def condition_params
        params.require(:condition).permit(:name, :notes, :patient_id)
    end
end
