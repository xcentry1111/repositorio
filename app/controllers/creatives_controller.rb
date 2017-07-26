class CreativesController < ApplicationController
	before_action :set_creative, only: [:show, :edit, :update]

  def index
  end

  def new
  	@creative = Creative.new
  end

  def edit
  	@creative = Creative.find(params[:id])
  end

  def create
    @creative = Creative.new(creative_params)

    respond_to do |format|
      if @creative.save
        redirect_to(root_url)
      else
        format.html { render :new }
        format.json { render json: @creative.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      if @creative.update(creative_params)
        redirect_to(root_url)
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creative
      @creative = Creative.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def creative_params
      params.require(:creative).permit!
    end

  def determine_layout
    if ['new','edit'].include?(action_name)
      "application"
    elsif ['index'].include?(action_name)
      "creative"
    end
  end

end
