class UserMailer < ApplicationMailer
    default :from => "application_name@domain.com"
    
    def registration_confirmation(user)
        @user = user
        mail(:to => "#{user.name} <#{user.email}, :subject => "Approved Confirmation for Registration)  
    end
end

