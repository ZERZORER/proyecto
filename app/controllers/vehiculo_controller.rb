class VehiculoController < ApplicationController
     
#----Interfaz----

  def new
  end

  def edit
      received_id = params[:id]
      @vehiculo = Vehiculo.where(id: received_id).first
  end
#------------------  

  def create
      t = Vehiculo.new({
          modelo: params[:modelo],
          placa: params[:placa],
          estado: params[:estado]
      })
      t.save
  end

  def destroy
    received_id = params[:id].to_i
    t = Vehiculo.where(id: received_id).first
    if t.nil?
        return redirect_to action: :index
    else
        t.destroy
        return redirect_to action: :index
    end
  end

  def update
      received_id = params[:id]
        @vehiculo = Vehiculo.where(id: received_id).first
        @vehiculo.update_attributes({
            modelo: params[:modelo],
            placa: params[:placa],
            estado: params[:estado]
        })

        redirect_to action: :show
  end

  def index
  end
  
  def show
      received_id = params[:id]
      @vehiculo = Vehiculo.where(id: received_id).first
  end
  
end
