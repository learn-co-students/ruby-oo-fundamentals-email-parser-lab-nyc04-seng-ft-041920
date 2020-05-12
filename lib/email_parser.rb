class EmailAddressParser
attr_accessor :emails 

def initialize(emails)
  @emails = emails
end 

def parse
  puts splitEmail = emails.split.collect {|address| address.split(',')}
  
  returnArray = splitEmail.flatten.uniq
  returnArray
end

end


