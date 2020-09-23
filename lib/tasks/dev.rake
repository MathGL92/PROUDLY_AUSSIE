namespace :dev do
  desc "TODO"
  task send_test_welcome_mail: :environment do
    UserMailer.with(user: User.last).welcome.deliver_now
  end

end
