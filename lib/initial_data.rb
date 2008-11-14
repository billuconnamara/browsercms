class InitialData
  
  extend Cms::DataLoader
  
  #Fixture-like way of creating initial data, except that it actually calls the real model methods
  #This way things like acts_as_list and versioning get setup properly for these records
  #The syntax is that you call create_whatever(:something, ...), where whatever is the model name,
  #something is the identifier you give this record, and the ... is the hash of options to pass
  #to the model constructor.  By calling the create_ method, you can then refer to the record later
  #in the same way you would with fixtures, by saying whatevers(:something)
  def self.load_data
    eval open("#{Rails.root}/db/initial_data.rb"){|f| f.read}
  end
  
end