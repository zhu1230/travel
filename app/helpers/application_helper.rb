module ApplicationHelper
	def area_by_groups
		h=Hash.new
		Area.roots.each do |r|
		setup_area(r,h)
		end
		h		
	end
	protected
	def setup_area(d,h)
			if  !d.leaf?
			h[d.name]||=Hash.new
		d.children.each do |c| 
			self.setup_area(c,h[d.name])
				end
			else
			h[d.name] ||=d.id
			end
	end
	
end
