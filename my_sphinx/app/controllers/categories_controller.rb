class CategoriesController < ApplicationController
  protect_from_forgery :except => [:create, :update, :destroy]
  before_filter :find_cats, :except => [:select, :follow, :reorder]
    
  def create
    cat = params[:cat]
    cat.delete("parent_id") if cat["parent_id"] == "0"
    @cat = Category.new(cat.merge(:user_id => current_user.id))
    
    if @cat.save
      flash.now[:notice] = "分类创建成功"
    else
      flash.now[:notice] = "分类创建失败"
    end
    render :action => "index"
  end
  
  def edit
    @cat = Category.find(params[:id])
  end
  
  def update
    cat = params[:cat]
    cat["parent_id"] = nil if cat["parent_id"] == "0"
    @cat = Category.find(params[:id])
    if check_self(@cat)
      if @cat.update_attributes(cat)
        flash.now[:notice] = "分类修改成功"
      else
        flash.now[:notice] = "分类修改失败"
      end
    end
    
    render :action => "index"
  end
  
  def destroy
    @cat = Category.find(params[:id])
    if check_self(@cat)
      unless @cat.has_children?
        if @cat.destroy
          flash.now[:notice] = "分类删除成功"
        else
          flash.now[:notice] = "分类删除失败"
        end
      else
        flash.now[:notice] = "不允许删除该分类，必须先删除掉该分类下的子类才行！"
      end
    end
    render :action => "index"
  end

  def index
  end 
  
  private
  
  def find_cats
    @cats = Category.all(:conditions=>["user_id is null and parent_id is null"],:order=>"position")
  end
end
