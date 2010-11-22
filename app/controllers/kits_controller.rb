class KitsController < ApplicationController
  def show
    @valve = Valve.find(params[:id])
  end

end
