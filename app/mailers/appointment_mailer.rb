class AppointmentMailer < ApplicationMailer
  default to: "Citiinfolineservices@gmail.com",
          from: "Citi Infoline Services <Citiinfolineservices@gmail.com>"

  def new_appointment(customer)
    @customer = customer

    mail(
      subject: "New Appointment Booking - #{@customer.name}",
      reply_to: @customer.email
    )
  end
end
