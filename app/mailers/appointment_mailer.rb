class AppointmentMailer < ApplicationMailer
  default from: "Citi Infoline Services <gaurav15199singh@gmail.com>",
          to: "gaurav15199singh@gmail.com"

  def new_appointment(customer)
    @customer = customer
    mail(
      subject: "New Appointment Booking - #{@customer.name}",
      reply_to: @customer.email
    )
  end
end
