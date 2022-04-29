class Recipe
  attr_reader :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end


# macorranada = Recipe.new('macarronada', 'Macarrão e molho')
# macorranada.name
# macarronada.description
