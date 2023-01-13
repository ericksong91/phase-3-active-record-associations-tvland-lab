require 'pry'
class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.shows.map do |show|
            "#{show.characters[0].name} - #{show.name}"
        end
    end
  
end