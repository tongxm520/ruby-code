class Category < ActiveRecord::Base
  belongs_to :user
  has_many :children, :foreign_key => 'parent_id', :class_name => "Category", :dependent => :destroy, :order => 'position'
  has_many :notes
    
  after_create :stats_count
  before_destroy :set_notes
  after_destroy :stats_count, :clear_share_content
  
  validates_presence_of :name, :message => "类名不能为空"
        
  def stats_count
#    stat = Stat.find_or_create_by_user_id(self.user_id)
#    stat.update_attribute(:note_category, Category.where(['user_id = ?', self.user_id]).count)
  end
  
  def set_notes
#    Note.update_all("category_id = 0", "category_id = #{self.id}")
  end
  
  def clear_share_content
#    ShareContent.where(["kind = ? and content_id = ?", ShareContent::KIND["category"], self.id]).all.map(&:destroy)
  end

  def has_children?
    self.children.count > 0
  end
end
