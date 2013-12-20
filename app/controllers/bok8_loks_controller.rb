class Bok8LoksController < ApplicationController
  before_action :set_bok8_lok, only: [:show, :edit, :update, :destroy]

  # GET /bok8_loks
  # GET /bok8_loks.json
  def index
    @bok8_loks = Bok8Lok.all
  end

  # GET /bok8_loks/1
  # GET /bok8_loks/1.json
  def show
  end

  # GET /bok8_loks/new
  def new
    @bok8_lok = Bok8Lok.new
  end

  # GET /bok8_loks/1/edit
  def edit
  end

  # POST /bok8_loks
  # POST /bok8_loks.json
  def create
    @bok8_lok = Bok8Lok.new(bok8_lok_params)

    respond_to do |format|
      if @bok8_lok.save
        format.html { redirect_to @bok8_lok, notice: 'Bok8 lok was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bok8_lok }
      else
        format.html { render action: 'new' }
        format.json { render json: @bok8_lok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bok8_loks/1
  # PATCH/PUT /bok8_loks/1.json
  def update
    respond_to do |format|
      if @bok8_lok.update(bok8_lok_params)
        format.html { redirect_to @bok8_lok, notice: 'Bok8 lok was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bok8_lok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bok8_loks/1
  # DELETE /bok8_loks/1.json
  def destroy
    @bok8_lok.destroy
    respond_to do |format|
      format.html { redirect_to bok8_loks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bok8_lok
      @bok8_lok = Bok8Lok.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bok8_lok_params
      params.require(:bok8_lok).permit(:pinn1_mia5, :pian1_ho7, :lui7)
    end
end
