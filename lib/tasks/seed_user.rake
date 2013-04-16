namespace :db do
  desc "create the admin user"
  task create_admin: :environment do
    User.new(
        name: 'Josh Horner',
        email: 'josh@bkmediagroup.com',
        password: 'niner9er',
        password_confirmation: 'niner9er',
        admin: true
    ).save
  end
end