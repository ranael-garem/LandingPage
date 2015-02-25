module UsersHelper
def user_params
  params.require(:user).permit(:first, :last, :age)
end

end




