class Course < ActiveRecord::Base
#  define_index  do
#    indexes :name, :sortable => true
#    indexes memo
#    
#    set_property :delta => true    
#  end

	is_indexed :fields => [
	  :memo,
	  {:field => 'name', :facet => true},
	  'created_at'], 
    :delta => true
end
