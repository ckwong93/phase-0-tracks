# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require-used for libraries
#require_relative- used for created file
require_relative 'state_data'

class VirusPredictor

#Initialize will state key data
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#Will perform predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

#Takes in data and outputs how many people will die from the outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    case @population_density

    when @population_density >= 200
      deaths = (@population * 0.4).floor
    when @population_density >= 150
      deaths = (@population * 0.3).floor
    when @population_density >= 100
      deaths = (@population * 0.2).floor
    when @population_density >= 50
      deaths = (@population * 0.1).floor
    else 
      deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{deaths} people in this outbreak"

  end

#Takes in data and outputs how fast the disease will spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |name,state_data|
  state = VirusPredictor.new(name,state_data[:population_density],state_data[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section
