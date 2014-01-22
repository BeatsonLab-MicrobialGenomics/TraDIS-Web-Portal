class MynewdataController < PagesController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  
  def index
    
  end
  
  def create
    
    @mynewdatum = current_user.mynewdata.build(mynewdatum_params)
    
    if @mynewdatum.save
      
      flash[:success] = "Metadata created.  Please submit experimental data (.csv file)"
      redirect_to (:back)
      else
        @feed_items = []
        render 'static_pages/home'
    end
  end

  def destroy
    @mynewdatum.destroy
    Experiment_datum.where(:exp => @mynewdatum.id).destroy_all
    redirect_to (:back)
  end

  private

    def mynewdatum_params
      params.require(:mynewdatum).permit(:id, :Genus, :title, :Species, :strain, :descrip, :title, :ref)  
    end

    def correct_user
      @mynewdatum = current_user.mynewdata.find_by(id: params[:id])      
    end

end
