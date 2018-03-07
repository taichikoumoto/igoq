# frozen_string_literal: true

class PhonesController < ApplicationController
  before_action :set_phone, only: %i[show edit update destroy]

  # GET /phones
  # GET /phones.json
  def index
    @phones = Phone.all
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'file_name'
      end
    end
  end

  # GET /phones/1
  # GET /phones/1.json
  def show; end

  # GET /phones/new
  def new
    @phone = Phone.new
  end

  # GET /phones/1/edit
  def edit; end

  # POST /phones
  # POST /phones.json
  def create
    @phone = Phone.new(phone_params)

    respond_to do |format|
      if @phone.save
        format.html { redirect_to @phone, notice: 'Phone was successfully created.' }
        format.json { render :show, status: :created, location: @phone }
      else
        format.html { render :new }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phones/1
  # PATCH/PUT /phones/1.json
  def update
    respond_to do |format|
      if @phone.update(phone_params)
        format.html { redirect_to @phone, notice: 'Phone was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone }
      else
        format.html { render :edit }
        format.json { render json: @phone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phones/1
  # DELETE /phones/1.json
  def destroy
    @phone.destroy
    respond_to do |format|
      format.html { redirect_to phones_url, notice: 'Phone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    DataSyncService.sync!
    redirect_to '/phones', notice: 'データの同期が完了しました。'
  end

  def import_excess
    ImportExcessService.execute!(params[:csv_file])
    redirect_to '/phones', notice: 'インポートが完了しました。'
  end

  def pdf; end

  def accounts
    respond_to do |format|
      format.html
      format.csv do
        @data = SheetRepository.accounts_data
        send_data render_to_string.gsub("\"\"",""), type: :csv
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_phone
    @phone = Phone.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def phone_params
    params.fetch(:phone, {})
  end
end
