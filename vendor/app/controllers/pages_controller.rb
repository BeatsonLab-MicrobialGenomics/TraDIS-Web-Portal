class PagesController < ApplicationController
  
  
  
  
  
  def home
  if signed_in?
    @Mynewdatum  = current_user.mynewdata.build

    
  end

  @mynewdata = Mynewdatum.all.paginate(page: params[:page])

end

  def help
  end

  def upload
    @mynewdatum = current_user.mynewdata.build if signed_in?
    @feed_items = current_user.feed.paginate(page: params[:page]) if signed_in?
    
  end

  def search
  end

  def signup
  end

  def contact
  end

  

  def experiments
    if signed_in?
     @experiment_data = Experiment_datum.where(:exp => params[:exp_no])
    else
      @experiment_data = Experiment_datum.where(:exp => "0")
  end
end
 





 def new
      
      
      
      
    end

end
