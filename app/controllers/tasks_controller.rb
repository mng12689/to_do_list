class TasksController < ApplicationController

	def show
	end 

	def new

		@task = Task.new
		@list_id = params[:list_id ]

	end

	def create
		
		@task = Task.new(params[:task])
		puts "printing create stuff"
		puts @task.list_id
		puts params[:task]
		@list = List.find(@task.list_id)
		if @task.save
			flash[:success] = "TASK ADDED!!!"
			redirect_to @list
		else
			render 'edit'
		end

	end 

	def edit
	end

	def update
	end 

end 