class AutocompleteThingsController < ApplicationController
  before_action :set_autocomplete_thing, only: %i[ show edit update destroy ]

  # GET /autocomplete_things or /autocomplete_things.json
  def index
    @autocomplete_things = AutocompleteThing.name_search(params[:name])
  end

  # GET /autocomplete_things/1 or /autocomplete_things/1.json
  def show
  end

  # GET /autocomplete_things/new
  def new
    @autocomplete_thing = AutocompleteThing.new
  end

  # GET /autocomplete_things/1/edit
  def edit
  end

  # POST /autocomplete_things or /autocomplete_things.json
  def create
    @autocomplete_thing = AutocompleteThing.new(autocomplete_thing_params)

    respond_to do |format|
      if @autocomplete_thing.save
        format.html { redirect_to autocomplete_thing_url(@autocomplete_thing), notice: "Autocomplete thing was successfully created." }
        format.json { render :show, status: :created, location: @autocomplete_thing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @autocomplete_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autocomplete_things/1 or /autocomplete_things/1.json
  def update
    respond_to do |format|
      if @autocomplete_thing.update(autocomplete_thing_params)
        format.html { redirect_to autocomplete_thing_url(@autocomplete_thing), notice: "Autocomplete thing was successfully updated." }
        format.json { render :show, status: :ok, location: @autocomplete_thing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @autocomplete_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autocomplete_things/1 or /autocomplete_things/1.json
  def destroy
    @autocomplete_thing.destroy

    respond_to do |format|
      format.html { redirect_to autocomplete_things_url, notice: "Autocomplete thing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autocomplete_thing
      @autocomplete_thing = AutocompleteThing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autocomplete_thing_params
      params.require(:autocomplete_thing).permit(:name, :random_field)
    end
end
