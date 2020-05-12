# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :csv_email
  
  def initialize(csv_email)
    @csv_email = csv_email
  end
  
  def parse
    splitEmail = csv_email.split.collect {|address| address.split(',')} 
    returnArr = splitEmail.flatten.uniq
  returnArr
  end
  
end