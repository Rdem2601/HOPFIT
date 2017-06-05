class GymsController < ApplicationController


  def product_params
  params.require(:product).permit(:name, :description, :photo, :photo_cache)
end

end
