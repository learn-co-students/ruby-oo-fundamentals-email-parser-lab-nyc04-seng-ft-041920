# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        parsed_emails = @email_addresses.delete(",").split(" ")
        parsed_emails.uniq
    end

end