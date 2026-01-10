class CustomersController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      AppointmentMailer.new_appointment(@customer).deliver_later
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