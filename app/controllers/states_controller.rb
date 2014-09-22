class StatesController < ApplicationController

  def search_states
  end
  
  def change_theme
  end
  
  def index
    if params['search']
      @states = State.where(abbreviation: params['search'].upcase.gsub(" ", ""))
    else
      @states = State.all
    end
  end

  def show
    @state = State.find_by(id: params[:id])
  end

  def new
  end

  def create
    @state = State.new
    @state.name = params[:name]
    @state.abbreviation = params[:abbreviation]

    if @state.save
      redirect_to "/states"
    else
      render 'new'
    end
  end

  def edit
    @state = State.find_by(id: params[:id])
  end

  def update
    @state = State.find_by(id: params[:id])
    @state.name = params[:name]
    @state.abbreviation = params[:abbreviation]

    if @state.save
      redirect_to "/states/#{ @state.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @state = State.find_by(id: params[:id])
    @state.destroy


    redirect_to "/states"
  end
  
  def customize
  end
end
