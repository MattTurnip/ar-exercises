class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, numericality: { greater_than: 40}
  after_create :random_pw 


  private 

  def random_pw
    self.update(password: [*('a'..'z'),*('0'..'9')].to_a.shuffle[0,8].join)
  end

end
