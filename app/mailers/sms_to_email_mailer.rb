class SmsToEmailMailer < ApplicationMailer
    default :from => 'bigbearcabins4less@gmail.com'

    def sms_to_email from, message


        mail(to: "shaneenterprises@gmail.com", subject: "SMS from #{from}") do |format|
            format.html {
              render locals: { from: from, message: message }
                }
        end
    end
end
