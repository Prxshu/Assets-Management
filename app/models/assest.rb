class Assest < ApplicationRecord
    validates :assest_name, presence: true
    validates :serial_no, presence: true
    validates :category, presence: true
    validates :aesset_ammount, presence: true
    validates :department, presence: true
    validates :description, presence: true, length: {minimum: 10, maximum: 300} 
end
