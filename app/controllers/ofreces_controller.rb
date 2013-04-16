class OfrecesController < ApplicationController
  # GET /ofreces
  # GET /ofreces.json
  def index
    @ofreces = Ofrece.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ofreces }
    end
  end

  # GET /ofreces/1
  # GET /ofreces/1.json
  def show
    @ofrece = Ofrece.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ofrece }
    end
  end

  # GET /ofreces/new
  # GET /ofreces/new.json
  def new
    @ofrece = Ofrece.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ofrece }
    end
  end

  # GET /ofreces/1/edit
  def edit
    @ofrece = Ofrece.find(params[:id])
  end

  # POST /ofreces
  # POST /ofreces.json
  def create
    @ofrece = Ofrece.new(params[:ofrece])

    respond_to do |format|
      if @ofrece.save
        format.html { redirect_to @ofrece, notice: 'Ofrece was successfully created.' }
        format.json { render json: @ofrece, status: :created, location: @ofrece }
      else
        format.html { render action: "new" }
        format.json { render json: @ofrece.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ofreces/1
  # PUT /ofreces/1.json
  def update
    @ofrece = Ofrece.find(params[:id])

    respond_to do |format|
      if @ofrece.update_attributes(params[:ofrece])
        format.html { redirect_to @ofrece, notice: 'Ofrece was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ofrece.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofreces/1
  # DELETE /ofreces/1.json
  def destroy
    @ofrece = Ofrece.find(params[:id])
    @ofrece.destroy

    respond_to do |format|
      format.html { redirect_to ofreces_url }
      format.json { head :no_content }
    end
  end
end
