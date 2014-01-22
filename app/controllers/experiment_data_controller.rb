class ExperimentDataController < MynewdataController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  before_action :get_exp_id


  def index
    if params[:search]
     @experiment_data = Experiment_datum.search(params[:search]).order("created_at DESC")
    
    else
  	 @experiment_data = Experiment_datum.all
    end
  end

  def import
    @new_exp = Mynewdatum.where(:user_id => @id).maximum(:id)
    if @new_exp == Experiment_datum.maximum(:exp) 
        redirect_to (:back), notice: "Upload metadata first!"
      elsif @new_exp == nil
        redirect_to (:back), notice: "Upload metadata first!"
      elsif params[:file] != nil
        Experiment_datum.import(params[:file], @new_exp, @id)
        redirect_to root_url, notice: "Experiment imported."
      else redirect_to (:back), notice: "No file selected!"
    end
  end

  def get_exp_id
    @id = current_user.id
  end
end

