class CustomersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @customer = Customer.new
  end

def create
  @customer = Customer.new(customer_params)

  if @customer.save
    begin
      AppointmentMailer.new_appointment(@customer).deliver_now
    rescue => e
      Rails.logger.error "Mail failed: #{e.class} - #{e.message}"
    end

    redirect_to root_path, notice: "Appointment booked successfully"
  else
    render :new, status: :unprocessable_entity
  end
end



  private

  def customer_params
    params.require(:customer).permit(:name, :phone, :email)
  end
end