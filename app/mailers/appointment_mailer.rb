class AppointmentMailer < ApplicationMailer
  default from: "Citi Infoline Services <gaurav165ongraph@gmail.com>",
          to: "gaurav165ongraph@gmail.com"

  def new_appointment(customer)
    @customer = customer
    mail(
      subject: "New Appointment Booking - #{@customer.name}",
      reply_to: @customer.email
    )
  end
end
