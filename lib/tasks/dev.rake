namespace :dev do
  
  task fake_list: :environment do
    List.destroy_all

    20.times do |i|
      List.create!(
        name: FFaker::Lorem.phrase,
        due_date: FFaker::Time.datetime,
        note: FFaker::Lorem.sentence
      )
    end
    puts "have created fake lists"
    puts "now you have #{List.count} lists"
  end

end