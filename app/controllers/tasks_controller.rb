class TasksController < ApplicationController

	respond_to :html, :json, :xml

	def show
	end 

	def new

		@task = Task.new
		@list_id = params[:list_id ]

	end

	def create
		
		@task = Task.new(params[:task])

		@list = List.find(@task.list_id)

		flash[:success] = "TASK ADDED!!!" if @task.save
			
		respond_with(@task, :location => list_path(@task.list_id))

	end 

	def edit
	end

	def update

		@task = Task.find(params[:id])

		@task.state = true

		@list = List.find(@task.list_id)

		flash[:success] = "TASK COMPLETED!!!" if @task.save
			
		respond_with(@task, :location => list_path(@task.list_id))	

	end 

end 