class Api::V1::ConditionsController < ApplicationController
    def index
        conditions = Condition.all
        render json: conditions.to_json
    end
end
