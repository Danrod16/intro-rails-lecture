class PagesController < ApplicationController
  def home
  end

  def about
    @members = ["Tom", "Jerry", "Rick", "Morty", "Pickle rick"]
    query = params[:first_name]
    if query
      @members = @members.select { |member| member.start_with?(query.capitalize) }
    end
  end
end
