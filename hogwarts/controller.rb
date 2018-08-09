require('pry-byebug')
require('sinatra')
require('sinatra/contrib/all')

require_relative ('./models/students')
require_relative ('./models/houses')

also_reload ('./models/*')

get "/student" do
  @students = Student.all()
  erb(:index)
end

get "/houses" do
  @houses = House.all()
  erb(:indexhouses)
end

get "/student/new" do
  erb(:new)
end

get "/student/:id" do
  @student = Student.find(params[:id])
  erb(:show)
end

post "/student" do
  p params
  @student = Student.new(params)
  @student.save()
  erb(:create)
end
