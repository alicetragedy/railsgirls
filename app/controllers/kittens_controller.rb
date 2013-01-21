class KittensController < ApplicationController
  # GET /kittens
  # GET /kittens.json
  def index
    @kittens = Kitten.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kittens }
    end
  end

  # GET /kittens/1
  # GET /kittens/1.json
  def show
    @kitten = Kitten.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kitten }
    end
  end

  # GET /kittens/new
  # GET /kittens/new.json
  def new
    @kitten = Kitten.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kitten }
    end
  end

  # GET /kittens/1/edit
  def edit
    @kitten = Kitten.find(params[:id])
  end

  # POST /kittens
  # POST /kittens.json
  def create
    @kitten = Kitten.new(params[:kitten])

    respond_to do |format|
      if @kitten.save
        format.html { redirect_to @kitten, notice: 'Kitten was successfully created.' }
        format.json { render json: @kitten, status: :created, location: @kitten }
      else
        format.html { render action: "new" }
        format.json { render json: @kitten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kittens/1
  # PUT /kittens/1.json
  def update
    @kitten = Kitten.find(params[:id])

    respond_to do |format|
      if @kitten.update_attributes(params[:kitten])
        format.html { redirect_to @kitten, notice: 'Kitten was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kitten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kittens/1
  # DELETE /kittens/1.json
  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy

    respond_to do |format|
      format.html { redirect_to kittens_url }
      format.json { head :no_content }
    end
  end
end
