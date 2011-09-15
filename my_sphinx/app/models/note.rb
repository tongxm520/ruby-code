class Note < ActiveRecord::Base
  belongs_to :category
  
#  define_index do
#    # fields
#    indexes title, :sortable => true
#		indexes body
#		
#		#set_property :delta => true
#		#set_property :delta => :datetime, :threshold => Time.now.utc_offset + 1.day
#  end
	is_indexed :fields => [
		:body,
		{:field => 'title', :facet => true},
		'created_at'], 
	  :delta => true
  
  def star_note
    self.star = true
    self.save
  end
  
  def unstar_note
    self.star = false
    self.save
  end
  
  

end
