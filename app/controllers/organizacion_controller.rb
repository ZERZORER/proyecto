class OrganizacionController < ApplicationController
    
#----Interfaz----
  def new
  end
  
  def edit
      received_id = params[:id]
      @orga = Organizacion.where(id: received_id).first
  end
#------------------  
  
  def create
      t = Organizacion.new({
          nombre: params[:nombre],
          direccion: params[:direccion],
          telefono: params[:telefono],
          correo: params[:correo]
      })
      
      t.save
  end

  def destroy
    received_id = params[:id].to_i
    t = Organizacion.where(id: received_id).first
    if t.nil?
        return redirect_to action: :index
    else
        t.destroy
        return redirect_to action: :index
    end

  end
  
  def update
      received_id = params[:id]
        @orga = Organizacion.where(id: received_id).first

        @orga.update_attributes({
            nombre: params[:nombre],
            direccion: params[:direccion],
            telefono: params[:telefono],
            correo: params[:correo]
        })

        redirect_to action: :show

  end
  
  def index
  end
  
  def show
      received_id = params[:id]
      @orga = Organizacion.where(id: received_id).first
  end
  
end
