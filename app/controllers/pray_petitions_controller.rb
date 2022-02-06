# frozen_string_literal: true

class PrayPetitionsController < ApplicationController
  before_action :set_pray_petition, only: %i[show edit update destroy]

  # GET /pray_petitions or /pray_petitions.json
  def index
    render html: 'Comunidad Cristiana Manantial de Vida, Guapiles'
    # @pray_petitions = PrayPetition.all
  end

  # GET /pray_petitions/1 or /pray_petitions/1.json
  def show; end

  # GET /pray_petitions/new
  def new
    @pray_petition = PrayPetition.new
  end

  # GET /pray_petitions/1/edit
  def edit; end

  # POST /pray_petitions or /pray_petitions.json
  def create
    @pray_petition = PrayPetition.new(pray_petition_params)

    respond_to do |format|
      if @pray_petition.save
        format.html { redirect_to pray_petition_url(@pray_petition), notice: 'Pray petition was successfully created.' }
        format.json { render :show, status: :created, location: @pray_petition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pray_petition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pray_petitions/1 or /pray_petitions/1.json
  def update
    respond_to do |format|
      if @pray_petition.update(pray_petition_params)
        format.html { redirect_to pray_petition_url(@pray_petition), notice: 'Pray petition was successfully updated.' }
        format.json { render :show, status: :ok, location: @pray_petition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pray_petition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pray_petitions/1 or /pray_petitions/1.json
  def destroy
    @pray_petition.destroy

    respond_to do |format|
      format.html { redirect_to pray_petitions_url, notice: 'Pray petition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pray_petition
    @pray_petition = PrayPetition.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def pray_petition_params
    params.require(:pray_petition).permit(:name, :phone_number, :email, :pray_for)
  end
end
