class CapsulesController < ApplicationController
  before_action :set_capsule, only: [:show, :edit, :update, :destroy]

  # GET /capsules
  def index
    @capsules = Capsule.all
  end

  # GET /capsules/1
  def show
  end

  # GET /capsules/new
  def new
    @capsule = Capsule.new
  end

  # GET /capsules/1/edit
  def edit
  end

  # POST /capsules
  def create
    @capsule = Capsule.new(capsule_params)

    if @capsule.save
      redirect_to @capsule, notice: 'Capsule was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /capsules/1
  def update
    if @capsule.update(capsule_params)
      redirect_to @capsule, notice: 'Capsule was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /capsules/1
  def destroy
    @capsule.destroy
    redirect_to capsules_url, notice: 'Capsule was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capsule
      @capsule = Capsule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def capsule_params
      params.fetch(:capsule, {}).permit(:title, :launch_date)
    end
end
