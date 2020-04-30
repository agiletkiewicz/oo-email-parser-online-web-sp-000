# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser 
  
  
  def initialize(emails)
    @emails = emails
  end
  
  
  def parse 
    parsed = @emails.split(/[," "]/).delete_if {|i| i == ""}
    final_array = []
    parsed.each do |email| 
      if !final_array.include?(email)
        final_array << email
      end
    end
    final_array
  end
  
  
  
end