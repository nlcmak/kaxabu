# encoding: UTF-8

class Bok8Lok8sController < ApplicationController
  before_action :set_bok8_lok8, only: [:show, :edit, :update, :destroy]

  # GET /bok8_lok8s
  # GET /bok8_lok8s.json
  def index
    @bok8_lok8s = Bok8Lok8.all
  end

  # GET /bok8_lok8s/1
  # GET /bok8_lok8s/1.json
  def show
  end

  # GET /bok8_lok8s/new
  def new
    @bok8_lok8 = Bok8Lok8.new
  end

  # GET /bok8_lok8s/1/edit
  def edit
  end

  # POST /bok8_lok8s
  # POST /bok8_lok8s.json
  def create
    @bok8_lok8 = Bok8Lok8.new(bok8_lok8_params)

    respond_to do |format|
      if @bok8_lok8.save
        format.html { redirect_to @bok8_lok8, notice: 'Bok8 lok8 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bok8_lok8 }
      else
        format.html { render action: 'new' }
        format.json { render json: @bok8_lok8.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bok8_lok8s/1
  # PATCH/PUT /bok8_lok8s/1.json
  def update
    respond_to do |format|
      if @bok8_lok8.update(bok8_lok8_params)
        format.html { redirect_to @bok8_lok8, notice: 'Bok8 lok8 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bok8_lok8.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bok8_lok8s/1
  # DELETE /bok8_lok8s/1.json
  def destroy
    @bok8_lok8.destroy
    respond_to do |format|
      format.html { redirect_to bok8_lok8s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bok8_lok8
      @bok8_lok8 = Bok8Lok8.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bok8_lok8_params
      params.require(:bok8_lok8).permit(:篇名, :編號, :類名)
    end
end
