class MembershipsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create 
        member = Membership.create!(members_params)
        render json: member, status: :created 
    end 

    private 

    def members_params
        params.permit(:gym_id, :client_id, :charge)
    end 

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: { error: "Member not found" }, status: :not_found
    end
end
