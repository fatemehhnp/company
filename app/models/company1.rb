class Company1 < ActiveRecord::Bas
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Company1.create!= row.to_hash
      end
  end
end
