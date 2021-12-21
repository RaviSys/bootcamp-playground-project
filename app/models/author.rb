class Author < ApplicationRecord
  has_many :books

  before_create :set_default_country
  before_update :set_default_email

  def set_default_country
    puts 'I am in before_create block'
    if self.country.nil?
      self.country = 'India'
    end
  end

  def set_default_email
    puts 'I am in before_update block'
    if self.email.nil?
      self.email = 'author@example.com'
    end
  end  
end
