# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser
 attr_accessor :name, :csv_emails #create instances

    def initialize(csv_emails) #initialize email
        @csv_emails = csv_emails
    end


    def parse
        
        csv_emails.split.map do |each_address|  #.split put all the emails into one array
          
            each_address.split(',')
        
        end.flatten.uniq
        #.uniq delete the duplicated emails
    
    end


end