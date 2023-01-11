class DynamicThingsController < ApplicationController
  before_action :set_dynamic_thing, only: %i[ show edit update destroy ]

  # GET /dynamic_things or /dynamic_things.json
  def index
    @dynamic_things = DynamicThing.all
  end

  # GET /dynamic_things/1 or /dynamic_things/1.json
  def show
  end

  # GET /dynamic_things/new
  def new
    @dynamic_thing = DynamicThing.new
  end

  # GET /dynamic_things/1/edit
  def edit
  end

  # POST /dynamic_things or /dynamic_things.json
  def create
    @dynamic_thing = DynamicThing.new(dynamic_thing_params)

    respond_to do |format|
      if @dynamic_thing.save
        format.html { redirect_to dynamic_thing_url(@dynamic_thing), notice: "Dynamic thing was successfully created." }
        format.json { render :show, status: :created, location: @dynamic_thing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dynamic_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dynamic_things/1 or /dynamic_things/1.json
  def update
    respond_to do |format|
      if @dynamic_thing.update(dynamic_thing_params)
        format.html { redirect_to dynamic_thing_url(@dynamic_thing), notice: "Dynamic thing was successfully updated." }
        format.json { render :show, status: :ok, location: @dynamic_thing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dynamic_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dynamic_things/1 or /dynamic_things/1.json
  def destroy
    @dynamic_thing.destroy

    respond_to do |format|
      format.html { redirect_to dynamic_things_url, notice: "Dynamic thing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dynamic_thing
      @dynamic_thing = DynamicThing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dynamic_thing_params
      params.require(:dynamic_thing).permit(:name, :active, :expiration_date)
    end
end
