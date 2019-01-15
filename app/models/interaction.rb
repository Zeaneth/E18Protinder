class Interaction < ApplicationRecord
    belongs_to :user_one, class_name: 'User'
    belongs_to :user_two, class_name: 'User'
    
    before_save :check_match
    def check_match
        # Si usuario que está haciendo like ya ha sido lekeado
        # entonces guardamos un match
        sender = user_one
        receiver = user_two
        if Interaction.where(user_one: receiver,
                             user_two: sender,
                             like: true)
                      .any?
            Match.create(user_one: sender, user_two: receiver)
        end
    end
end
