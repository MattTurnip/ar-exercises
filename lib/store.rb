class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { greater_than: 0}
  validate :check_apparel

  has_many :employees

  def check_apparel
    if !mens_apparel && !womens_apparel
      errors[:base] << "Store must have either men's or women's apparel"
    end
  end
end



