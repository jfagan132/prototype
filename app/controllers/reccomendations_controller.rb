class ReccomendationsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]

  def create
    @reccomendation = current_user.reccomendation.build(reccomendation_params)
    if @reccomendation.save
      flash[:success] = "Reccomendation created!"
      redirect_to root_url
    else
      render 'home#index'
    end
  end
  
  def index
    @reccomendations = Reccomendation.paginate(page: params[:page])
  end

  def destroy
  end

  private

    def reccomendation_params
      params.require(:reccomendation).permit(:opinion)
    end
end
