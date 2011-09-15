class NotesController < ApplicationController
    
  def index
    @notes = Note.all
    respond_to do |format|
      format.html
    end
  end
  
  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html
      format.xml  { render :xml => @note }
    end
  end

  def classify
    @notes = []
    @cats = Category.all
    cat = params[:cat] ? Category.find(params[:cat]) : Category.first rescue nil
    @notes = cat.notes if cat
    
    render :layout => "cats", :template => "/notes/classify"
  end
  
  def update_cat
    @note = Note.find(params[:id]) rescue nil
    if @note
      if params[:cat] && params[:cat].to_i != @note.category_id
        @note.category_id = params[:cat]
        @success = @note.save
      end
    else
      @success = false
    end
  end
  
  def rate
    links = ""
    5.times.each do |i|
      if i < params[:rate].to_i
        klass = 'done'
      else
        klass = 'fade'
      end
      links << "<a href='#{rate_note_path(params[:id])}' class='#{klass} voted' rel='#{i+1}'></a>"
    end
    
    render :text => links
  end
 
  def star
    @note = Note.find(params[:id])
    @note.star_note
    render :text => "#{unstar_note_path(params[:id])}, done"
  end
  
  def unstar
    @note = Note.find(params[:id])
    @note.unstar_note
    render :text => "#{star_note_path(params[:id])}, undone"
  end
 
end
