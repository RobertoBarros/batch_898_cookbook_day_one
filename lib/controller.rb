require_relative 'view'
class Controller

  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    # 1. Pegar todas as receitas do cookbook
    recipes = @cookbook.all

    # 2. Mandar a view mostrar as receitas
    @view.display(recipes)

  end

  def  create
    # 1. Perguntar qual o nome da receita
    name = @view.ask_recipe_name

    # 2. Perguntar qual a descrição da receita
    description = @view.ask_recipe_description

    # 3. Instanciar uma nova receita
    recipe = Recipe.new(name, description)

    # 4. Adicionar a receita ao Cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # 1. Mostrar as receitas cadastradas
    list

    # 2. Perguntar o index da receita a ser excluída
    index = @view.ask_index

    # 3. Mandar o cookbook remover a receita pelo index
    @cookbook.remove_recipe(index)

  end

end
