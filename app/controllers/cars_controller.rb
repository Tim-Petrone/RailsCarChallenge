class CarsController < ApplicationController
  def create
     if params[:make] == nil || params[:modelyear] == nil
          render 'create.html.erb'
     else
      @cars = Car.new(params[:make], params[:modelyear])
      session[:cars] = @cars.to_yaml
      redirect_to "/cars/status"
    end
  end

  def status
      @cars = YAML.load(session[:cars])
        if(params.has_key?(:accelerate))
            @cars.accelerate
            session[:cars] = @cars.to_yaml
        end
      @cars = YAML.load(session[:cars])
        if(params.has_key?(:brake))
            @cars.brake
            session[:cars] = @cars.to_yaml
        end
      @cars = YAML.load(session[:cars])
        if(params.has_key?(:lights))
            @cars.lights
            @cars.lights_status
            session[:cars] = @cars.to_yaml
        end
  end
end
