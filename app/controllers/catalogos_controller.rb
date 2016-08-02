class CatalogosController < ApplicationController
  before_action :set_catalogo, only: [:show, :edit, :update, :destroy]

  # GET /catalogos
  # GET /catalogos.json
  def index

    @catalogos = Catalogo.search(params[:search]).order('nombre ASC').page(params[:page]).per(10)
   
    if current_user  
    
    c = current_user

    @tuma = Catalogo.search(params[:categorizacion]).where(:categorizacion => 9).take
    @d = Catalogo.search(params[:entidad]).where( :entidad => c.siglas ).order('nombre ASC').page(params[:page]).per(3)
    @aa = Catalogo.search(params[:entidad]).where( :entidad => c.siglas ).order('nombre ASC').page(params[:page]).per(3)
    
    else

    
    @catalogos = Catalogo.search(params[:search]).order('nombre ASC').page(params[:page]).per(10)
  
  end
  end

  # GET /catalogos/1
  # GET /catalogos/1.json
  def show
    @tipos = Catalogo.joins(:tipos)

  end

def diseño


      
end

  # GET /catalogos/new
  def new
    @catalogo = Catalogo.new
  end

  # GET /catalogos/1/edit
  def edit  
  end

  # POST /catalogos
  # POST /catalogos.json
  def create
    @catalogo = Catalogo.new(catalogo_params)

    respond_to do |format|
      if @catalogo.save
        format.html { redirect_to @catalogo, notice: 'Su servicio ha sido creado satisfactoriamente. ' }
        format.json { render :show, status: :created, location: @catalogo }
      else
        format.html { render :new }
        format.json { render json: @catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogos/1
  # PATCH/PUT /catalogos/1.json
  def update

       @t = Time.now

    respond_to do |format|
      if @catalogo.update(catalogo_params)
        format.html { redirect_to @catalogo, notice: 'Su servicio ha sido actualizado satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @catalogo }
      else
        format.html { render :edit }
        format.json { render json: @catalogo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogos/1
  # DELETE /catalogos/1.json
  def destroy
    @catalogo.destroy
    respond_to do |format|
      format.html { redirect_to catalogos_url, notice: 'El servicio se ha eliminado correctamente. ' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogo
      @catalogo = Catalogo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogo_params
      params.require(:catalogo).permit(:nombre, :mercado, :infraestructura, :descripcion, :resultados, :informante, :entidad, :autorizado, :fregistro, :categorizacion)
    end
end

#f.collection_select :tipo, Tipo.select(:descripcion).distinct.where.not(descripcion: ''), :descripcion, :descripcion, {prompt: "Seleccione un tipo"}, {:class=> 'form-control', :style=> 'width:30%;float:left'} 