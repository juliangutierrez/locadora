class GenerosController < ApplicationController
  # GET /generos
  # GET /generos.json
  def index
    @generos = Genero.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @generos }
    end
  end

  # GET /generos/1
  # GET /generos/1.json
  def show
    @genero = Genero.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @genero }
    end
  end

  # GET /generos/new
  # GET /generos/new.json
  def new
    @genero = Genero.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @genero }
    end
  end

  # GET /generos/1/edit
  def edit
    @genero = Genero.find(params[:id])
  end

  # POST /generos
  # POST /generos.json
  def create
    @genero = Genero.new(params[:genero])

    respond_to do |format|
      if @genero.save
        format.html { redirect_to @genero, notice: 'Genero was successfully created.' }
        format.json { render json: @genero, status: :created, location: @genero }
      else
        format.html { render action: "new" }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /generos/1
  # PUT /generos/1.json
  def update
    @genero = Genero.find(params[:id])

    respond_to do |format|
      if @genero.update_attributes(params[:genero])
        format.html { redirect_to @genero, notice: 'Genero was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @genero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generos/1
  # DELETE /generos/1.json
  def destroy
    @genero = Genero.find(params[:id])
    @genero.destroy

    respond_to do |format|
      format.html { redirect_to generos_url }
      format.json { head :no_content }
    end
  end
end
