class ClienteController < ApplicationController
    
#----Interfaz----

  def new
  end

  def edit
      received_id = params[:id]
      @cliente = Cliente.where(id: received_id).first
  end
#------------------  

  def create
      t = Cliente.new({
          nombre: params[:nombre],
          apellidop: params[:apellidop],
          apellidom: params[:apellidom],
          direccion: params[:direccion],
          telefono: params[:telefono],
          correo: params[:correo],
          tarjeta: params[:tarjeta]
      })
      t.save
  end

  def destroy
    received_id = params[:id].to_i
    t = Cliente.where(id: received_id).first
    if t.nil?
        return redirect_to action: :index
    else
        t.destroy
        return redirect_to action: :index
    end
  end

  def update
      received_id = params[:id]
        @cliente = Cliente.where(id: received_id).first
        @cliente.update_attributes({
            nombre: params[:nombre],
            apellidop: params[:apellidop],
            apellidom: params[:apellidom],
            direccion: params[:direccion],
            telefono: params[:telefono],
            correo: params[:correo],
            tarjeta: params[:tarjeta]
        })

        redirect_to action: :show
  end

  def index
  end
  
  def show
      received_id = params[:id]
      @cliente = Cliente.where(id: received_id).first
  end
end
