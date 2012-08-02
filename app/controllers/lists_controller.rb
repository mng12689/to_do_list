class ListsController < ApplicationController

	respond_to :html, :json, :xml

	def home

		@lists = List.all
		@tasks = Task.all

	end

	def new

		@list = List.new

		#respond_with(@list)

	end 

	def edit
		#change name 
		
		# render "/lists/#{@task.list_id}"
	end

	def create

		@list = List.new(params[:list])

		if @list.save
			flash[:success] = "LIST SAVED!!!"
			redirect_to @list
		else
			render 'new'
		end

		#respond_with(@list)

	end 

	def show

		@tasks = Task.find_all_by_list_id(params[:id])
		@list = List.find(params[:id])

	end

	def destroy
		@list = List.find(params[:id])
		if @list.destroy 
			redirect_to root_path
		else
			render 'show'
		end
	end 
end 