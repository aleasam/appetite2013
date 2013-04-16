class CiudadesController < ApplicationController
  # GET /ciudades
  # GET /ciudades.json
  def index
    @ciudades = Ciudade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ciudades }
    end
  end

  # GET /ciudades/1
  # GET /ciudades/1.json
  def show
    @ciudade = Ciudade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ciudade }
    end
  end

  # GET /ciudades/new
  # GET /ciudades/new.json
  def new
    @ciudade = Ciudade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ciudade }
    end
  end

  # GET /ciudades/1/edit
  def edit
    @ciudade = Ciudade.find(params[:id])
  end

  # POST /ciudades
  # POST /ciudades.json
  def create
    @ciudade = Ciudade.new(params[:ciudade])

    respond_to do |format|
      if @ciudade.save
        format.html { redirect_to @ciudade, notice: 'Ciudade was successfully created.' }
        format.json { render json: @ciudade, status: :created, location: @ciudade }
      else
        format.html { render action: "new" }
        format.json { render json: @ciudade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ciudades/1
  # PUT /ciudades/1.json
  def update
    @ciudade = Ciudade.find(params[:id])

    respond_to do |format|
      if @ciudade.update_attributes(params[:ciudade])
        format.html { redirect_to @ciudade, notice: 'Ciudade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ciudade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ciudades/1
  # DELETE /ciudades/1.json
  def destroy
    @ciudade = Ciudade.find(params[:id])
    @ciudade.destroy

    respond_to do |format|
      format.html { redirect_to ciudades_url }
      format.json { head :no_content }
    end
  end
end
