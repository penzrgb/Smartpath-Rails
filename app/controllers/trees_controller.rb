class TreesController < ApplicationController
  before_action :set_tree, only: [:show, :edit, :update, :destroy]

  # GET /trees
  def index
    @trees = Tree.all
    render :json => @trees
  end

  # GET /trees/1
  def show
    render :json => Tree.find(params[:id])
  end

  def bounds
    data = params[:data]
    render :json => Tree.InsideArea(data[:latTopLeft], data[:longTopLeft], data[:latBottomRight], data[:longBottomRight])
  end

  # GET /trees/new
  def new
    @tree = Tree.new
  end

  # GET /trees/1/edit
  def edit
  end

  # POST /trees
  def create
    @tree = Tree.new(tree_params)

    if @tree.save
      redirect_to @tree, notice: 'Tree was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /trees/1
  def update
    if @tree.update(tree_params)
      redirect_to @tree, notice: 'Tree was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /trees/1
  def destroy
    @tree.destroy
    redirect_to trees_url, notice: 'Tree was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tree
      @tree = Tree.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tree_params
      params.require(:tree).permit(:latitude, :longitude)
    end
end
