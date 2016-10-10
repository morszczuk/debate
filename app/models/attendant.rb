class Attendant < ApplicationRecord
    validates :name, presence: true
    validates :surname, presence: true
    validates :email, uniqueness: true, presence: true
    validates :university, presence: true

    #validates :invoice_university, presence: true, if: "invoice"
    #validates :invoice_address, presence: true, if: "invoice"
    #validates :invoice_nip, presence: true, if: "invoice"

    def self.to_csv
        attributes = %w{id name surname email phone university ticket payment
                        questions diet roommate invoice_university invoice_address
                        invoice_nip sms agree}

        CSV.generate(headers: true) do |csv|
            csv << attributes

            all.each do |user|
                csv << attributes.map{ |attr| user.send(attr) }
            end
        end
    end
end
