class SpongesController < ApplicationController
  before_action :set_sponge, only: [:show, :edit, :update, :destroy]
  impressionist actions: [ :index, :show ]

  # GET /sponges
  # GET /sponges.json
  def index
    @sponges = Sponge.all
  end

  # GET /sponges/1
  # GET /sponges/1.json
  def show
  end

  # GET /sponges/new
  def new
    @sponge = Sponge.new
  end

  # GET /sponges/1/edit
  def edit
  end

  # POST /sponges
  # POST /sponges.json
  def create
    @sponge = Sponge.new(sponge_params)

    respond_to do |format|
      if @sponge.save
        format.html { redirect_to @sponge, notice: 'Sponge was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sponge }
      else
        format.html { render action: 'new' }
        format.json { render json: @sponge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponges/1
  # PATCH/PUT /sponges/1.json
  def update
    respond_to do |format|
      if @sponge.update(sponge_params)
        format.html { redirect_to @sponge, notice: 'Sponge was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sponge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponges/1
  # DELETE /sponges/1.json
  def destroy
    @sponge.destroy
    respond_to do |format|
      format.html { redirect_to sponges_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponge
      @sponge = Sponge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sponge_params
      params[:sponge]
    end
end
