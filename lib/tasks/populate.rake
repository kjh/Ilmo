namespace :db do
	desc "Erase courses database table and then fill it with 1 to 1000 records)"
	task :populate_courses, [:number_of_records] => :environment do |t, args|
		args.with_defaults(:number_of_records => 0)
		number_of_records = Integer(args.number_of_records)
		if (number_of_records > 0 && number_of_records <= 1000)
			word_list = []
		  File.open("#{RAILS_ROOT}/lib/tasks/words.txt", "r").each do |word|
		  	word_list << word
		  end
		  Course.delete_all
		  # Reset IDs fix for mySQL databases
		  #Course.connection.execute('ALTER TABLE courses AUTO_INCREMENT = 0')
	  	(1..number_of_records).each do |counter|
	  		begin
	  			random_name = word_list[rand(word_list.size - 1)]
	  			description_txt = "Lorem ipsum dolor sit amet, eius mattis suscipit."
	  			Course.find_or_create_by_name(:name => random_name, :description => description_txt)
  			end while Course.find(:all).size < counter
  		end
	  else
			puts "Usage: db:populate_courses[<number of records to generate (1 - 1000)>]"
		end
	end
end