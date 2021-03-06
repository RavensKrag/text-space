module TextSpace
	class Camera
		attr_accessor :position
		
		def initialize()
			# Center position
			@position = CP::Vec2.new($window.width/2, $window.height/2)
			# Position of upper left corner, relative to @position
			@offset = CP::Vec2.new(-$window.width/2, -$window.height/2)
		end
		
		def update
			
		end
		
		def draw
			vec = self.offset
			
			$window.translate -vec.x, -vec.y do
				yield
			end
		end
		
		# Offset for screen coordinates to camera space
		def offset
			@position + @offset
		end
	end
end