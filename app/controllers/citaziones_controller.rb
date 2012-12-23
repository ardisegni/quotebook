class CitazionesController < ApplicationController
  # GET /citaziones
  # GET /citaziones.json
  def index
    @citaziones = Citazione.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @citaziones }
    end
  end

  # GET /citaziones/1
  # GET /citaziones/1.json
  def show
    @citazione = Citazione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @citazione }
    end
  end

  # GET /citaziones/new
  # GET /citaziones/new.json
  def new
    @citazione = Citazione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @citazione }
    end
  end

  # GET /citaziones/1/edit
  def edit
    @citazione = Citazione.find(params[:id])
  end

  # POST /citaziones
  # POST /citaziones.json
  def create
    @citazione = Citazione.new(params[:citazione])

    respond_to do |format|
      if @citazione.save
        format.html { redirect_to @citazione, notice: 'Citazione was successfully created.' }
        format.json { render json: @citazione, status: :created, location: @citazione }
      else
        format.html { render action: "new" }
        format.json { render json: @citazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /citaziones/1
  # PUT /citaziones/1.json
  def update
    @citazione = Citazione.find(params[:id])

    respond_to do |format|
      if @citazione.update_attributes(params[:citazione])
        format.html { redirect_to @citazione, notice: 'Citazione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @citazione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citaziones/1
  # DELETE /citaziones/1.json
  def destroy
    @citazione = Citazione.find(params[:id])
    @citazione.destroy

    respond_to do |format|
      format.html { redirect_to citaziones_url }
      format.json { head :no_content }
    end
  end
end
