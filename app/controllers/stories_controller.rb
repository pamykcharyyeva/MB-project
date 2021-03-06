class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :publish_story, :edit, :update, :destroy]

  # GET /stories
  # GET /stories.json
  def index
    @stories = Story.all
    respond_to do |format|
      format.html
      format.json { render json:@stories}
    end 
  end

  # GET /stories/1
   # GET /stories/1.json
  def show
    respond_to do |format|
      format.html
      format.json { render json:@story}
    end
  end

  # GET newsletters/1/stories/new
  def new
    @story = Story.new
   
  end

  # GET /stories/1/edit

  def edit
  end

 # POST /stories
  # POST /stories.json
  def create
    @story = Story.create(story_params)
      respond_to do |format|
      if @story.save
      
        format.html { redirect_to @story, notice: 'Story was successfully created.'}
        format.json { render :show, status: :created, location: @story }
      else
        format.html { render :new }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stories/1
  # PUT /stories/1.json
  def update
    respond_to do |format|
      if @story.update_attributes(story_params)
        format.html { redirect_to @story, notice: 'Story was successfully updated.' }
        format.json { render :show, status: :ok, location: @story }
      else
        format.html { render :edit }
        format.json { render json: @story.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /stories/1
  # DELETE /stories/1.json
  def destroy
    @story.destroy
    respond_to do |format|
      format.html { redirect_to stories_url, notice: 'Newsletter was successfully destroyed.' }
      format.json { head :no_content }
  end
end




  def publish_story
    # byebug
    @story.publish_story
    redirect_to @story
  end





  private
   

    def set_story
      @story = Story.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_params
      params.require(:story).permit(:title, :html, :author, :newsletter_date)
    end
end
