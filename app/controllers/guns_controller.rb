class GunsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_gun, only: [:show, :edit, :update, :destroy]

  # GET /guns
  # GET /guns.json
  def index
    @guns = Gun.all
  end

  # GET /guns/1
  # GET /guns/1.json
  def show
  end

  # GET /guns/new
  def new
    @gun = Gun.new
  end

  # GET /guns/1/edit
  def edit
  end

  # POST /guns
  # POST /guns.json
  def create
    @gun = Gun.new(gun_params)

    respond_to do |format|
      if @gun.save
        format.html { redirect_to @gun, notice: 'Gun was successfully created.' }
        format.json { render :show, status: :created, location: @gun }
      else
        format.html { render :new }
        format.json { render json: @gun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guns/1
  # PATCH/PUT /guns/1.json
  def update
    respond_to do |format|
      if @gun.update(gun_params)
        format.html { redirect_to @gun, notice: 'Gun was successfully updated.' }
        format.json { render :show, status: :ok, location: @gun }
      else
        format.html { render :edit }
        format.json { render json: @gun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guns/1
  # DELETE /guns/1.json
  def destroy
    @gun.destroy
    respond_to do |format|
      format.html { redirect_to guns_url, notice: 'Gun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gun
      @gun = Gun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gun_params
      params.require(:gun).permit(:name)
    end
end
