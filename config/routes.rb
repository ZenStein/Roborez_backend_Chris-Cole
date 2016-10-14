Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    post 'sms-messages' => 'sms_messages#blast'
    post 'sms-incoming' => 'sms_messages#incoming'
end
