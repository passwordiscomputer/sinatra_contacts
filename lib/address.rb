class Address

  attr_accessor :street, :city, :state, :zip, :type

  def initialize(attributes)
    @type = attributes.fetch(:type)
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zip = attributes.fetch(:zip)
  end

end
