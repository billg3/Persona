class CollectivesController < ApplicationController
   
  def index
    @collectives = Collective.all
  end


  # def index
  #   @projects = Collective.search(params[:search])
  # end


def show
@collective = Collective.find_by(id: params[:id])
end

def new
@collective = Collective.new
end

def create
@collective = Collective.find_or_create_by(collective_params)
#  @collective.creator_id = current_user.id
if @collective.valid?
# @collective.name = @collective.full_name
# @collective.save
redirect_to @collective
else
render :new
end
end

def edit
@collective = Collective.find_by(id: params[:id])
end

def update
@collective = Collective.find_by(id: params[:id])
@collective.update(Collective_params)
redirect_to @collective
end

def filter
@collectives = Collective.reverse_sort.popularity

render :index
end

def category_filter

@collectives = Collective.where(category: params[:category])

render :index

end


  private


  def collective_params
      params.require(:collective).permit(:name, :category, :about)
  end

end