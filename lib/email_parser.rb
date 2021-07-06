# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
#
# class EmailAddressParser
#  attr_accessor :name, :csv_emails #create instances
#
#     def initialize(csv_emails) #initialize email
#         @csv_emails = csv_emails
#     end
#
#
#     def parse
#
#         csv_emails.split.map do |each_address|  #.split put all the emails into one array
#
#             each_address.split(',')
#
#         end.flatten.uniq
#         #.uniq delete the duplicated emails
#
#     end
#
#
# end


#5/13/2020 4:57pm

class EmailAddressParser
  attr_reader :csv_emails

  def initialize(csv_emails)
    @csv_emails = csv_emails
  end

  def parse
     puts @csv_emails.split #["g@gmail.com,", "thi@gmail.com"] put all the email in one array.
     @csv_emails.split.map do |each| #iterate each element in the array.
     puts "each::: #{each}" #g@gmail.com, thi@gmail.com #each email with one comma
     each.split(',')        #["g@gmail.com"]["thi@gmail.com"] #eliminate comma and put each element in each array
     end.flatten.uniq
   end
end

#EmailAddressParser.new("g@gmail.com, thi@gmail.com").parse

