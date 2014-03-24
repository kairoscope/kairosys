class SitePagesController < ApplicationController
  before_action :set_site_page, only: [:show, :edit, :update, :destroy]

  # GET /site_pages
  # GET /site_pages.json
  def index
    @site_pages = SitePage.all
  end

  # GET /site_pages/1
  # GET /site_pages/1.json
  def show
  end

  def sobre
    @site_page = SitePage.find(1)
    render action: 'show'
  end
  
  def edit_sobre
    @site_page = SitePage.find(1)
    render action: 'edit'
  end
  
  def contato
    @site_page = SitePage.find(2)
    render action: 'show'
  end
  
  def edit_contato
    @site_page = SitePage.find(2)
    render action: 'edit'
  end

  # GET /site_pages/new
  def new
    @site_page = SitePage.new
  end

  # GET /site_pages/1/edit
  def edit
  end

  # POST /site_pages
  # POST /site_pages.json
  def create
    @site_page = SitePage.new(site_page_params)

    respond_to do |format|
      if @site_page.save
        format.html { redirect_to @site_page, notice: 'Site page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @site_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @site_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /site_pages/1
  # PATCH/PUT /site_pages/1.json
  def update
    respond_to do |format|
      if @site_page.update(site_page_params)
        if @site_page.id == 0
         format.html { redirect_to sobre_path, notice: 'Site page was successfully updated.' }
         format.json { head :no_content }
        else @site_page.id == 1
         format.html { redirect_to contato_path, notice: 'Site page was successfully updated.' }
         format.json { head :no_content }
       end
      else
        format.html { render action: 'edit' }
        format.json { render json: @site_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_pages/1
  # DELETE /site_pages/1.json
  def destroy
    @site_page.destroy
    respond_to do |format|
      format.html { redirect_to site_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_page
      @site_page = SitePage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_page_params
      params.require(:site_page).permit(:title, :content)
    end
end
