require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student.rb')

#index
get "/students" do
  @students = Student.all()
  erb(:index)
end

#create
post "/students" do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end

#new
get "/students/new" do
  erb(:new)
end

# show
get "/students/:id" do
  @student = Student.find(params[:id])
  erb(:show)
end
