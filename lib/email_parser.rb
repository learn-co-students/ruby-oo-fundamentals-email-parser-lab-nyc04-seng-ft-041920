# Build a class EmailAddressParser that accepts a string of unformatted
# emails.

class EmailAddressParser
  attr_accessor :email
  
  def initialize(email)
    @email = email
  end

  def parse
    parsed = @email.split(/[,\s]+/) # character class to match a comma and whitespace one or more times
    parsed.uniq
  end
end
