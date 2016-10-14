class SmsMessagesController < ApplicationController
    def blast 
        #p 'array of numbers below'
        #p params['numbers'].split(',')
        # client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_AUTH_TOKEN'] 
        # from = "+14153196596" # Your Twilio number
        # TODO: Build helpers to check, filter and modify params['numbers'].
        #       numbers example = ['+19095837780','+19254567890']
        # numbers = 
        # numbers.each do |key, value|
        #    client.account.messages.create(
        #        :from => from,
        #        :to => key,
        #        :body => params['message']
        #    )
        #    p "Sent message to #{value}"
        #end
        options = { numbers: params['numbers'], message: params['message'] }

        render json: options
    end 

    def incoming
        #p 'incoming has came!!!! and params below'
        #p params
        #<ActionController::Parameters {"ToCountry"=>"US", "ToState"=>"CA", "SmsMessageSid"=>"SMa1e3594f7e37131847da63fb38d9a014", "NumMedia"=>"0", "ToCity"=>"", "FromZip"=>"92403", "SmsSid"=>"SMa1e3594f7e37131847da63fb38d9a014", "FromState"=>"CA", "SmsStatus"=>"received", "FromCity"=>"SAN BERNARDINO", "Body"=>"Hey there this is incoming from", "FromCountry"=>"US", "To"=>"+14153196596", "ToZip"=>"", "NumSegments"=>"1", "MessageSid"=>"SMa1e3594f7e37131847da63fb38d9a014", "AccountSid"=>"AC2af87bd237bb23944bc873bb62c075a1", "From"=>"+19098007845", "ApiVersion"=>"2010-04-01", "controller"=>"sms_messages", "action"=>"incoming"} permitted: false>
        SmsToEmailMailer.sms_to_email(params['From'], params['Body']).deliver
    end
end
