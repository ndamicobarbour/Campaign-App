class UserController < ApplicationController

  def start
    render 'register'
  end

  def register
        @user = Campaign.new
        @user.name = params[:username]
        @user.code = params[:password]
        @user.description = params[:description]
        @user.save!
        render 'login'
    end

    def login
        @current_user = Campaign.find_by(name: params[:username])
        if @current_user == nil
            flash[:wrong] = "campaign is imaginary"
            render 'login'
        elsif @current_user.code == params[:password]
            session[:current_user]=@current_user.to_yaml
            render 'campaign'
        else
            flash[:wrong] = "failed your saving throw"
            render 'login'
        end
    end

    def new_day
      render 'new_day'
    end

    def skip_to_login
      render 'login'
    end

    def create_new_day
      day = Day.new
      campaign = YAML.load(session[:current_user])
      current = Campaign.find_by(id: campaign.id)
      day.day_count = (campaign.days.count) + 1
      day.title = params[:title]
      day.description = params[:description]
      current.days << day
      day.save!
      render 'campaign'
    end

    def create_new_day_rel
        render 'campaign'
    end

end
