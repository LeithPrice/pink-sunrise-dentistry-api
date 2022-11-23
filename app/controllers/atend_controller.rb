class AtendController < ApplicationController

   # these are methods that are run subject to specific fetch statements
    before_action :set_atends, only: %i[index]

    #  this method renders the data param in json form
    def index
      render json: { success: true,
                     atends: @atends.as_json(only: %i[id date]) }
    end
  
    # private is an access modifier, used so the below methods can only be called within this class.
    private
  
    # this methis sets the variable @atends 
    def set_atends
      @atends = Atend.where('date >= :tomorrow', tomorrow: Time.now + 1.day)
    end
end
