namespace :dev do

  desc "Rebuild system"
  task :build => ["tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate", "db:seed" ]

  desc "demo"
  task :demo => :environment do
    for i in 1..10 do
      puts i
    end
  end

  desc "Fake users"
  task :fake_users => :environment do
    for i in 1..10 do
      User.create!(email: "xxx#{i}@xxx.com", password: "12345678")
    end
  end
end
