class Car
  def initialize(make, modelyear, lights=false)
    @make = make
    @modelyear = modelyear
    @speed = 0
    @lights = lights
  end

  # To be called in the view
  def car_info
    p "#{@modelyear} #{@make}"
  end

  # Necessary for YAML
  def make= new_make
    @make = new_make
  end

  def modelyear= new_modelyear
    @modelyear = new_modelyear
  end

  def accelerate
      @speed = @speed + 10
  end
  def brake
      if @speed <= 7
          @speed = 0
      else
          @speed = @speed - 7
      end
  end
  def speed
      @speed
  end

  def lights
      @lights = !(@lights)
  end

  def lights_status
      if @lights == false
          @lights_status = "off"
      else
          @lights_status = "on"
      end
  end
end
