class UsersController < ApplicationController
# before_filter :ensure_logged_in
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end
	
	def create
		@user = User.new(params[:user])

		if @user.save
			redirect_to edit_user_path(@user) 
		else
			render :new
		end
	end

	def edit
  		@user = User.find(params[:id])  
 	end


	def destroy
    	user = User.find(params[:id])
    	user.delete
       	redirect_to user  
	end

#Standard stuff above

  def update
      @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
        session[:user_id] = @user.id
        # check paths and match up  =========================
        redirect_to dashboard_index_path(@user) 
             else
        render :edit
      end
  end


  def login
        user = User.find_by_username(params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to dashboard_index_path(user)
        else
            render :new #this is the new.html.erb page =======
        end
  end
# private
  # def ensure_logged_in
  #      redirect_to root_path if @auth.nil?
  #  end
end
