class CollectivesController < ApplicationController
   
        def index
          @collectives= Collective.all
        end
      
        def show
          @collective = Collective.find(params[:id])
          @ride = Ride.new
        end
      
        def new
          @collective = Collective.new
        end
      
        def create
          @collective = Collective.create(Collectives_param)
          redirect_to Collective_path(@collective)
        end
      
        def edit
          @collective = Collective.find(params[:id])
        end
      
        def update
          @collective = Collective.find(params[:id])
          @collective.update(Collectives_param)
          redirect_to Collective_path(@collective)
        end
      
        private
      
        def Collectives_param
          params.require(:Collective).permit(:name)
        end
      end
end
