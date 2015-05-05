class ZodiacsController < ApplicationController

def sign

@zodiac = Zodiac.find_by({ :sign => params["the_sign"]})

end

def creature

@zodiac = Zodiac.find_by({ :creature => params["the_creature"]})

end

def id

  @zodiac = Zodiac.find_by({ :id => params["the_id"].to_i})

end

def index

@list_of_zodiacs = Zodiac.all

end

def new_form



end


end
