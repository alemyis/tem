class TemsController < ApplicationController
  # GET /tems
  # GET /tems.xml
  def index
    @tems = Tem.all.paginate(:per_page => 1, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tems }
    end
  end

  # GET /tems/1
  # GET /tems/1.xml
  def show
    @tem = Tem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tem }
    end
  end

  # GET /tems/new
  # GET /tems/new.xml
  def new
    @tem = Tem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tem }
    end
  end

  # GET /tems/1/edit
  def edit
    @tem = Tem.find(params[:id])
  end

  # POST /tems
  # POST /tems.xml
  def create
    @tem = Tem.new(params[:tem])

    respond_to do |format|
      if @tem.save
        format.html { redirect_to(@tem, :notice => 'Tem was successfully created.') }
        format.xml  { render :xml => @tem, :status => :created, :location => @tem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tems/1
  # PUT /tems/1.xml
  def update
    @tem = Tem.find(params[:id])

    respond_to do |format|
      if @tem.update_attributes(params[:tem])
        format.html { redirect_to(@tem, :notice => 'Tem was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tems/1
  # DELETE /tems/1.xml
  def destroy
    @tem = Tem.find(params[:id])
    @tem.destroy

    respond_to do |format|
      format.html { redirect_to(tems_url) }
      format.xml  { head :ok }
    end
  end
end
