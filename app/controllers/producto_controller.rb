class ProductoController < ApplicationController
    
#----Interfaz----

  def new
  end

  def edit
      received_id = params[:id]
      @producto = Producto.where(id: received_id).first
  end
#------------------  

  def create
      t = Producto.new({
          nombre: params[:nombre],
          precio: params[:precio]
      })
      t.save
  end

  def destroy
    received_id = params[:id].to_i
    t = Producto.where(id: received_id).first
    if t.nil?
        return redirect_to action: :index
    else
        t.destroy
        return redirect_to action: :index
    end
  end

  def update
      received_id = params[:id]
        @producto = Producto.where(id: received_id).first
        @producto.update_attributes({
            nombre: params[:nombre],
            precio: params[:precio]
        })

        redirect_to action: :show
  end

  def index
  end
  
  def show
      received_id = params[:id]
      @producto = Producto.where(id: received_id).first
  end
  
end
