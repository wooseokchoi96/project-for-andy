class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    validates :doctor_id, :patient_id, :description, :date, presence: true
    validates :date, uniqueness: true, length: {is: 8}

end
