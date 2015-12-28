# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# The require_relative statement checks that the file listed is available and can use data from it. 
# This differs from require because it can use a relative path rather than an absolute path.
require_relative 'state_data'

class VirusPredictor
#declare instance variables to be used through the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#combines results of following methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private #prevents calling from outside of the class's methods
#prints number of deaths in a given state based on population density
    def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      prediction = 0.4
    elsif @population_density >= 150
      prediction = 0.3
    elsif @population_density >= 100
      prediction = 0.2
    elsif @population_density >= 50
      prediction = 0.1
    else
      prediction = 0.05
    end

    print "#{@state} will lose #{(prediction * @population).floor} people in this outbreak"

  end
#calculates speed of spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5
    
    if @population_density >= 200
      speed -= 2
    elsif @population_density >= 150
      speed -= 1.5
    elsif @population_density >= 100
      speed -= 1
    elsif @population_density >= 50
      speed -= 0.5
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

STATE_DATA.each do |state, info|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  state.virus_effects
end
#=======================================================================
# Reflection Section