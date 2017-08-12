class EmailParser
attr_accessor :list_of_emails
  def initialize(list_of_emails)
    @list_of_emails = list_of_emails
  end
  def parse
    emails = @list_of_emails.split(/\s|,/)
    emails.reject { |c| c.empty? }.uniq
  end
end



# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
