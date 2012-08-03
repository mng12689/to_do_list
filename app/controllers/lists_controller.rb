class ListsController < ApplicationController

	respond_to :html, :json, :xml

	def home

		@lists = List.all
		@tasks = Task.all

	end

	def new

		@list = List.new

	end 

	def edit
		#change name 
		
		# render "/lists/#{@task.list_id}"
	end

	def create

		@list = List.new(params[:list])

		flash[:success] = "LIST SAVED!!!" if @list.save

		respond_with(@list)

	end 

	def show

		@tasks = Task.find_all_by_list_id(params[:id])
		@list = List.find(params[:id])

		respond_with({list: @list, tasks: @tasks})

	end

	def destroy

		@list = List.find(params[:id])

		flash[:success] = "LIST DELETED!!!" if @list.destroy 

		respond_with(@list, :location => root_path)

	end 
end 