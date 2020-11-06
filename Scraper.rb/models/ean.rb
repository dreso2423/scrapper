class Ean
  attr_accessor :id
  attr_reader :name, :address

  def initialize(attributes = {})
    @id = attributes[:id]
    @ean = attributes[:ean]
    @tree_data = attributes[]
  end
end
