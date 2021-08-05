module TrainsHelper
  def count_top_places(wagons)
    sum = 0
    wagons.each do |wagon|
      sum = wagon.count_top_places + sum
    end
    sum
  end

  def count_bottom_places(wagons)
    sum = 0
    wagons.each do |wagon|
      sum = wagon.count_bottom_places + sum
    end
    sum
  end
end
