class AttendantsController < ApplicationController
    http_basic_authenticate_with name: "debata", password: "123", only: :index
     skip_before_filter :verify_authenticity_token

    def index
        render json: Attendant.all
    end

    def create
        @attendant = Attendant.new(attendant_params)
        if @attendant.save
            render json: @attendant, status: :ok
        else
            render json: {errors: @attendant.errors.messages}, status: :bad_request
        end
    end

    def generate_csv
        send_data Attendant.all.to_csv
    end

    private

    def attendant_params
        params.permit(:name, :surname, :email, :phone, :university, :ticket, :payment, :questions,
        :diet, :roommate, :invoice_university, :invoice_address, :invoice_nip, :sms, :agree)
    end
end
