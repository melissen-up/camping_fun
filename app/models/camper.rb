class Camper < ApplicationRecord
    has_many :camper_activities
    has_many :actvities, through: :camper_activities

    # def activities
    #     byebug
    # end

end
