class PuntoDeVentaController < ApplicationController
  # GET /punto_de_venta
  # GET /punto_de_venta.json
  def index
    @punto_de_venta = PuntoDeVentum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @punto_de_venta }
    end
  end

  # GET /punto_de_venta/1
  # GET /punto_de_venta/1.json
  def show
    @punto_de_ventum = PuntoDeVentum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @punto_de_ventum }
    end
  end

  # GET /punto_de_venta/new
  # GET /punto_de_venta/new.json
  def new
    @punto_de_ventum = PuntoDeVentum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @punto_de_ventum }
    end
  end

  # GET /punto_de_venta/1/edit
  def edit
    @punto_de_ventum = PuntoDeVentum.find(params[:id])
  end

  # POST /punto_de_venta
  # POST /punto_de_venta.json
  def create
    @punto_de_ventum = PuntoDeVentum.new(params[:punto_de_ventum])

    respond_to do |format|
      if @punto_de_ventum.save
        format.html { redirect_to @punto_de_ventum, notice: 'Punto de ventum was successfully created.' }
        format.json { render json: @punto_de_ventum, status: :created, location: @punto_de_ventum }
      else
        format.html { render action: "new" }
        format.json { render json: @punto_de_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /punto_de_venta/1
  # PUT /punto_de_venta/1.json
  def update
    @punto_de_ventum = PuntoDeVentum.find(params[:id])

    respond_to do |format|
      if @punto_de_ventum.update_attributes(params[:punto_de_ventum])
        format.html { redirect_to @punto_de_ventum, notice: 'Punto de ventum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @punto_de_ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /punto_de_venta/1
  # DELETE /punto_de_venta/1.json
  def destroy
    @punto_de_ventum = PuntoDeVentum.find(params[:id])
    @punto_de_ventum.destroy

    respond_to do |format|
      format.html { redirect_to punto_de_venta_url }
      format.json { head :no_content }
    end
  end
end
