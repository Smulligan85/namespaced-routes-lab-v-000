class Admin::SettingsController < ApplicationController
  def index
    @preference = Preference.first_or_create(song_sort_order: "DESC", artist_sort_order: "DESC")
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to admin_settings_index_path
  end

  private
   
  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order)
  end

end
