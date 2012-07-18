class Phone1sController < ApplicationController
  # GET /phone1s
  # GET /phone1s.json
  def index
    @phone1s = Phone1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @phone1s }
    end
  end

  # GET /phone1s/1
  # GET /phone1s/1.json
  def show
    @phone1 = Phone1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @phone1 }
    end
  end

  # GET /phone1s/new
  # GET /phone1s/new.json
  def new
    @phone1 = Phone1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @phone1 }
    end
  end

  # GET /phone1s/1/edit
  def edit
    @phone1 = Phone1.find(params[:id])
  end

  # POST /phone1s
  # POST /phone1s.json
  def create
    @phone1 = Phone1.new(params[:phone1])

    respond_to do |format|
      if @phone1.save
        format.html { redirect_to @phone1, :notice => 'Phone number was successfully created.' }
        format.json { render :json => @phone1, :status => :created, :location => @phone1 }
      else
        format.html { render :action => "new" }
        format.json { render :json => @phone1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /phone1s/1
  # PUT /phone1s/1.json
  def update
    @phone1 = Phone1.find(params[:id])

    respond_to do |format|
      if @phone1.update_attributes(params[:phone1])
        format.html { redirect_to @phone1, :notice => 'Phone number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @phone1.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /phone1s/1
  # DELETE /phone1s/1.json
  def destroy
    @phone1 = Phone1.find(params[:id])
    @phone1.destroy

    respond_to do |format|
      format.html { redirect_to phone1s_url }
      format.json { head :no_content }
    end
  end
end
