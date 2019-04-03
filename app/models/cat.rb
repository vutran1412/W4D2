# == Schema Information
#
# Table name: cats
#
#  id          :integer          not null, primary key
#  birth_date  :date
#  color       :string
#  name        :string
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'action_view'
require 'action_view/helpers'


class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    COLORS = %w(black white orange brown)

    validates :color, inclusion:  { in: COLORS, message: "Choose color"}
    validates :sex, inclusion: { in: %w(M F), message: "Must be selected" }

    def age
        Time.now.year - self.birth_date.year
    end
end
