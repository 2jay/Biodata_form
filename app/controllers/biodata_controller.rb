class BiodataController < ApplicationController
def new
	@biodata = Biodata.new
end

def edit
	@biodata = Biodata.find(params[:id])
end

def index
	@biodata = Biodata.all
end

def create
	@biodata = Biodata.new(biodata_params)
	
	if @biodata.save
		redirect_to @biodata
	else
		render 'new'
	end
end

def show
	@biodata = Biodata.find(params[:id])
end

def update
	@biodata = Biodata.find(params[:id])

	if @biodata.update(biodata_params)
		redirect_to @biodata
	else
		render 'edit'
	end
end

def destroy
	@biodata = Biodata.find(params[:id])
  	@biodata.destroy
 
  	redirect_to biodata_path
end

private
	def biodata_params
		params.require(:biodata).permit(:title, :first_name, :last_name, :date_of_birth, :about)
	end

end
