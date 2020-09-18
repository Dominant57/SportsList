class UserController < ApplicationController
    def signup
    end
    def login_form
    end
    def create
        @user=User.new
        @user.name=params[:name]
        @user.email=params[:email]
        @user.password=params[:password]
        @user.save
        redirect_to("/")
    end
    def login
        @user=User.find_by(email: params[:email],password: params[:password])
        if @user
            session[:user_id]=@user.id
            redirect_to("/")
        else
            render("user/login")
        end
    end
    def mypage
        @user=User.find_by(id: session[:user_id])
    end
    def logout
        session[:user_id]= nil
        redirect_to("/")
    end
end
