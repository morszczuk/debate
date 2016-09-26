class Attendant < ApplicationRecord
    has_many :questions
    validates :name, presence: true
    validates :surname, presence: true
    validates :email, uniqueness: true, presence: true
    validates :university, presence: true

    validates :invoice_university, presence: true, if: "invoice"
    validates :invoice_address, presence: true, if: "invoice"
    validates :invoice_nip, presence: true, if: "invoice"

end
