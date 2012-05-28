class CanaisController < ApplicationController
  # GET /canais
  # GET /canais.json
  def index
    @canais = Canal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @canais }
    end
  end

  # GET /canais/1
  # GET /canais/1.json
  def show
    @canal = Canal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @canal }
    end
  end

  # GET /canais/new
  # GET /canais/new.json
  def new
    @canal = Canal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @canal }
    end
  end

  # GET /canais/1/edit
  def edit
    @canal = Canal.find(params[:id])
  end

  # POST /canais
  # POST /canais.json
  def create
    @canal = Canal.new(params[:canal])

    respond_to do |format|
      if @canal.save
        format.html { redirect_to @canal, notice: 'Canal was successfully created.' }
        format.json { render json: @canal, status: :created, location: @canal }
      else
        format.html { render action: "new" }
        format.json { render json: @canal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /canais/1
  # PUT /canais/1.json
  def update
    @canal = Canal.find(params[:id])

    respond_to do |format|
      if @canal.update_attributes(params[:canal])
        format.html { redirect_to @canal, notice: 'Canal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @canal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /canais/1
  # DELETE /canais/1.json
  def destroy
    @canal = Canal.find(params[:id])
    @canal.destroy

    respond_to do |format|
      format.html { redirect_to canais_url }
      format.json { head :no_content }
    end
  end
end