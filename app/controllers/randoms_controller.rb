class RandomsController < ApplicationController

  def index
    @animals = Animal.all
    json_response(@animals.sample)
  end

end
