class PagesController < ApplicationController
  def about
    @heading = 'Cтраничка про нас'
    @text = 'немного текста'
  end
end
