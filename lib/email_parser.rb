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

    # binding.pry
    def parse
        # if @email_addresses.include?(",")
        #     @email_addresses.split(", ").uniq
        # else
        #     @email_addresses.split(" ").uniq
        # end
        @email_addresses.split(" ").map{|element| element.delete_suffix(",")}.uniq
        # e.uniq

    end
end