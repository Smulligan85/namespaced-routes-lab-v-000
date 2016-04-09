class Admin::AccessController < ApplicationController
  def index
    @preference = Preference.find_or_create_by(:id => 1)
  end

  def update
    @preference = Preference.find(params[:id])
    if @preference.update(preference_params)
      redirect_to admin_access_index_path
    else
      render "index"
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_artists, :allow_create_songs)
  end

end
