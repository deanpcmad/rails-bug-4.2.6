class Customer < ActiveRecord::Base

  has_many :phones

  accepts_nested_attributes_for :phones, reject_if: lambda { |p| p[:number].blank? }, allow_destroy: true

end
