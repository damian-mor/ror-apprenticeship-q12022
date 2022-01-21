class EggGroupsController < ApplicationController
  before_action :set_egg_group, only: %i[ show edit update destroy ]

  # GET /egg_groups or /egg_groups.json
  def index
    @egg_groups = EggGroup.all
  end

  # GET /egg_groups/1 or /egg_groups/1.json
  def show
  end

  # GET /egg_groups/new
  def new
    @egg_group = EggGroup.new
  end

  # GET /egg_groups/1/edit
  def edit
  end

  # POST /egg_groups or /egg_groups.json
  def create
    @egg_group = EggGroup.new(egg_group_params)

    respond_to do |format|
      if @egg_group.save
        format.html { redirect_to egg_group_url(@egg_group), notice: "Egg group was successfully created." }
        format.json { render :show, status: :created, location: @egg_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @egg_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /egg_groups/1 or /egg_groups/1.json
  def update
    respond_to do |format|
      if @egg_group.update(egg_group_params)
        format.html { redirect_to egg_group_url(@egg_group), notice: "Egg group was successfully updated." }
        format.json { render :show, status: :ok, location: @egg_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @egg_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /egg_groups/1 or /egg_groups/1.json
  def destroy
    @egg_group.destroy

    respond_to do |format|
      format.html { redirect_to egg_groups_url, notice: "Egg group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_egg_group
      @egg_group = EggGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def egg_group_params
      params.require(:egg_group).permit(:name)
    end
end
