class MarkersController < ApplicationController
  before_action :set_marker, only: [:show]


  def map
    respond_to do |format|
  format.html
  format.json {
    pluck_fields = Marker.pluck(:id, :lat, :lng)
    render json: Oj.dump(pluck_fields)
  }
end
  end


  def show
        render "show", layout: false
  end

  private
    def set_marker
      @marker = Marker.find(params[:id])
    end




def index
end

def create
end

def update
end












end
