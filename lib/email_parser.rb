# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
   class EmailAddressParser
    attr_accessor :emails
   
    def initialize(emails)
     @emails = emails 
   end

   def parse
    parsed_emails = []
    arr = emails.split(',')
    arr = emails.split(' ')
    arr.each do |val|
    if val[0] == " "
      val = val[1..-1]
        parsed_emails << val
    elsif val[-1] == ","
      val = val[0..-2]
      parsed_emails << val
    else 
      parsed_emails << val 
  end
end
  parsed_emails.uniq
end

end

