class Phone < ActiveRecord::Base
    def self.import(file)
        CSV.foreach(file.path, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
            phone = Phone.new
            phone.company = row[1]
            phone.number = row[2]
            phone.price = 2980
            phone.user = row[4]
            phone.save!
        end
    end
end
