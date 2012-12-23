class PerlasController < ApplicationController
  # GET /perlas
  # GET /perlas.json
  def index
    @perlas = Perla.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perlas }
    end
  end

  # GET /perlas/1
  # GET /perlas/1.json
  def show
    @perla = Perla.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perla }
    end
  end

  # GET /perlas/new
  # GET /perlas/new.json
  def new
    @perla = Perla.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perla }
    end
  end

  # GET /perlas/1/edit
  def edit
    @perla = Perla.find(params[:id])
  end

  # POST /perlas
  # POST /perlas.json
  def create
    @perla = Perla.new(params[:perla])

    respond_to do |format|
      if @perla.save
        format.html { redirect_to @perla, notice: 'Perla was successfully created.' }
        format.json { render json: @perla, status: :created, location: @perla }
      else
        format.html { render action: "new" }
        format.json { render json: @perla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /perlas/1
  # PUT /perlas/1.json
  def update
    @perla = Perla.find(params[:id])

    respond_to do |format|
      if @perla.update_attributes(params[:perla])
        format.html { redirect_to @perla, notice: 'Perla was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perlas/1
  # DELETE /perlas/1.json
  def destroy
    @perla = Perla.find(params[:id])
    @perla.destroy

    respond_to do |format|
      format.html { redirect_to perlas_url }
      format.json { head :no_content }
    end
  end
end
