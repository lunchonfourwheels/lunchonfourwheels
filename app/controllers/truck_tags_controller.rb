class TruckTagsController < ApplicationController
  # GET /truck_tags
  # GET /truck_tags.json
  def index
    @truck_tags = TruckTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @truck_tags }
    end
  end

  # GET /truck_tags/1
  # GET /truck_tags/1.json
  def show
    @truck_tag = TruckTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @truck_tag }
    end
  end

  # GET /truck_tags/new
  # GET /truck_tags/new.json
  def new
    @truck_tag = TruckTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @truck_tag }
    end
  end

  # GET /truck_tags/1/edit
  def edit
    @truck_tag = TruckTag.find(params[:id])
  end

  # POST /truck_tags
  # POST /truck_tags.json
  def create
    @truck_tag = TruckTag.new(params[:truck_tag])

    respond_to do |format|
      if @truck_tag.save
        format.html { redirect_to @truck_tag, notice: 'Truck tag was successfully created.' }
        format.json { render json: @truck_tag, status: :created, location: @truck_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @truck_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /truck_tags/1
  # PUT /truck_tags/1.json
  def update
    @truck_tag = TruckTag.find(params[:id])

    respond_to do |format|
      if @truck_tag.update_attributes(params[:truck_tag])
        format.html { redirect_to @truck_tag, notice: 'Truck tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @truck_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_tags/1
  # DELETE /truck_tags/1.json
  def destroy
    @truck_tag = TruckTag.find(params[:id])
    @truck_tag.destroy

    respond_to do |format|
      format.html { redirect_to truck_tags_url }
      format.json { head :no_content }
    end
  end
end
