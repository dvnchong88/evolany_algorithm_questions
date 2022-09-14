class SortedArray
    def initialize(array)
      i=0
      array.size.times do
        array.each do |b|
          if b > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
          end
          i+=1 if i < array.size-2
        end
      end
      # sorting is automatically done upon creation
      @array = array
    end

    def sorted()
      # get sorted array
      @array
    end

    def reversed()
      # get a reversed array without changing the sorted list
      reversed_array = []
      @array.length.times { |i| reversed_array << @array[(i+1)*-1] }
      reversed_array
    end
end
