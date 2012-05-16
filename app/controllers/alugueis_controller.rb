class AlugueisController < ApplicationController
	
  def index
    @alugueis = Aluguel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @alugueis }
    end
  end
  
  def show
    @aluguel = Aluguel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @aluguel }
    end
  end
  
  def new
    @aluguel = Aluguel.new
    @aluguel.data_saida = Time.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @aluguel }
    end
  end
  
  def edit
    @aluguel = Aluguel.find(params[:id])
  end
  
  def create
    @aluguel = Aluguel.new({'filme_ids' => []}.merge(params[:aluguel]))
    @aluguel.data_saida = Time.now
    respond_to do |format|
      if @aluguel.save
        format.html { redirect_to @aluguel, notice: 'Aluguel was successfully created.' }
        format.json { render json: @aluguel, status: :created, location: @aluguel }
      else
        format.html { render action: "new" }
        format.json { render json: @aluguel.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @aluguel = Aluguel.find(params[:id])

    respond_to do |format|
      if @aluguel.update_attributes(params[:aluguel])
        format.html { redirect_to @aluguel, notice: 'Aluguel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @aluguel.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @aluguel = Aluguel.find(params[:id])
    @aluguel.destroy

    respond_to do |format|
      format.html { redirect_to alugueis_url }
      format.json { head :no_content }
    end
  end	

end
