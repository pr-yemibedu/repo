class SnippetsController < ApplicationController
  
  protect_from_forgery :only => [:create, :delete, :update]

  # GET /snippets
  # GET /snippets.xml
  def index
    @snippets = Snippet.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @snippets }
      format.json  { render :json => @snippets[0..5].collect{|s| {:id => s.id, :title => s.title, :language => s.language, :tag_list => s.tags_string} } }
      format.jsonhtml { render :text => @snippets.to_json }
    end
  end

  # GET /snippets/1
  # GET /snippets/1.xml
  def show
    @snippet = Snippet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @snippet }
      format.json { render :json => @snippet.atts_to_hash }
      format.jsonhtml { render :text => @snippet.atts_to_hash.to_json }
    end
  end

  # GET /snippets/new
  # GET /snippets/new.xml
  def new
    @snippet = Snippet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @snippet }
      format.json { render :json => @snippet }
    end
  end

  # GET /snippets/1/edit
  def edit
    @snippet = Snippet.find(params[:id])
  end

  # POST /snippets
  # POST /snippets.xml
  def create
    @snippet = Snippet.new(params[:snippet])

    respond_to do |format|
      if @snippet.save
        flash[:notice] = 'Snippet was successfully created.'
        format.html { redirect_to(@snippet) }
        format.xml  { render :xml => @snippet, :status => :created, :location => @snippet }
        format.json { render :json => @snippet.atts_to_hash, :status => :created, :location => @snippet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @snippet.errors, :status => :unprocessable_entity }
        format.json { render :json => @snippet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /snippets/1
  # PUT /snippets/1.xml
  def update
    @snippet = Snippet.find(params[:id])

    respond_to do |format|
      if @snippet.update_attributes(params[:snippet])
        flash[:notice] = 'Snippet was successfully updated.'
        format.html { redirect_to(@snippet) }
        format.xml  { head :ok }
        format.json { render :json => Snippet.find(params[:id]).atts_to_hash }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @snippet.errors, :status => :unprocessable_entity }
        format.json  { render :json => @snippet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /snippets/1
  # DELETE /snippets/1.xml
  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy

    respond_to do |format|
      format.html { redirect_to(snippets_url) }
      format.xml  { head :ok }
      format.json { head :ok }
    end
  end
end
