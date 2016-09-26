class AttendantsController < ApplicationController
    http_basic_authenticate_with name: "debata", password: "123", only: :index
     skip_before_filter :verify_authenticity_token

    def index
        render json: Attendant.all
    end

    def create
        @attendant = CreateAttendantWithQuestions.call attendant_params, params[:questions]
        if @attendant.valid?
            render json: @attendant, status: :ok
        else
            render json: {errors: @attendant.errors.messages}, status: :bad_request
        end
    end

    private

    def attendant_params
        params.permit(:name, :surname, :email, :phone, :university, :vegetarian, :roommate,
            :sms, :invoice, :invoice_university, :invoice_address, :invoice_nip)
    end
end
