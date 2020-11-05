require "csv"
require_relative "ean"

class Ean
  def initialize(csv_file)
    @ean = [] # <--- <Recipe> instances
    @csv_file = csv_file
    load_csv
  end
  def all
    return @recipes
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1])
    end
  end

  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
