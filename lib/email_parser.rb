# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize(email_list)
        @email_list =  email_list
    end

    attr_accessor :email_list

    def parse
        #delete commas from string and then split into arr
        email_arr = @email_list.delete(",").split(/ /)
        email_arr.uniq
    end
end

list = EmailAddressParser.new("email@email.com, sample@sample.com")

p list.parse
