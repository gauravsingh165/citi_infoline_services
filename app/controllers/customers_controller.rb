class CustomersController < ApplicationController

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to root_path, notice: "Appointment booked successfully"
    else
      redirect_to root_path, alert: "Failed to book appointment"
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :phone, :email)
  end
end