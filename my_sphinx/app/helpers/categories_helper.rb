module CategoriesHelper
  def options_for_cats(cats = @cats)
    cats.map {|c| [c.name, c.id]}.unshift(["顶级类", 0])
  end
  
  def parent_cat?(cat)
    !cat.parent_id
  end
end
