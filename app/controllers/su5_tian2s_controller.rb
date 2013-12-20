class Su5Tian2sController < ApplicationController
  before_action :set_su5_tian2, only: [:show, :edit, :update, :destroy]

  # GET /su5_tian2s
  # GET /su5_tian2s.json
  def index
    @su5_tian2s = Su5Tian2.all
  end

  # GET /su5_tian2s/1
  # GET /su5_tian2s/1.json
  def show
  end

  # GET /su5_tian2s/new
  def new
    @su5_tian2 = Su5Tian2.new
  end

  # GET /su5_tian2s/1/edit
  def edit
  end

  # POST /su5_tian2s
  # POST /su5_tian2s.json
  def create
    @su5_tian2 = Su5Tian2.new(su5_tian2_params)

    respond_to do |format|
      if @su5_tian2.save
        format.html { redirect_to @su5_tian2, notice: 'Su5 tian2 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @su5_tian2 }
      else
        format.html { render action: 'new' }
        format.json { render json: @su5_tian2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /su5_tian2s/1
  # PATCH/PUT /su5_tian2s/1.json
  def update
    respond_to do |format|
      if @su5_tian2.update(su5_tian2_params)
        format.html { redirect_to @su5_tian2, notice: 'Su5 tian2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @su5_tian2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /su5_tian2s/1
  # DELETE /su5_tian2s/1.json
  def destroy
    @su5_tian2.destroy
    respond_to do |format|
      format.html { redirect_to su5_tian2s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_su5_tian2
      @su5_tian2 = Su5Tian2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def su5_tian2_params
      params.require(:su5_tian2).permit(:bok8_lok8_id, :su5_tian2_pian1_ho7, :kau3_tsai5_piau1_ki3, :phuan1_ing2_lik8_piau1_ki3, :tiong1_bun5, :tai5_gi2, :tsham1_kho2, :tshut4_tshu3)
    end
end
