class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0}
  validate :check_apparel
  before_destroy :employees?
  # def before_destroy 
  #   if employees.size
  #     puts "HEY !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  #   end
  # end

  def check_apparel
    if !mens_apparel && !womens_apparel
      errors[:base] << "Store must have either men's or women's apparel"
    end
  end

  def employees?
    if employees.count <= 0
      true
    elsif employees.count
      throw :abort
    end

  end

  
end



