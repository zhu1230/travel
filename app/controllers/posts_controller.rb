class PostsController < ApplicationController
	before_filter :require_user, :only => [:new, :create,:destory,:update,:edit]
  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts,:layout => false }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = Post.new(params[:post])
@post.user=current_user
	current_user.tag(@post, :with => params[:post][:tag_list], :on => :tags)
	puts @post.save
    respond_to do |format|
      if @post.save
        format.html { redirect_to(@post, :notice => 'Post was successfully created.') }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end
	
  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = Post.find(params[:id])
 current_user.tag(@post, :with => params[:post][:tag_list], :on => :tags)
    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to(@post, :notice => 'Post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end
	
	def search
		@result=Post.where('subject like :search',{:search=>'%'+params[:search]+'%'})
		ActsAsTaggableOn::Tag.where("name like ?","%"+params[:search]+"%").each do |t|
			@result << Post.tagged_with(t.name)
		end
		Area.where("name like ?","%"+params[:search]+"%").each do |t|
				@result << t.posts
		end
		@result.flatten!.compact!
	
	end
	def tagged
		@posts=Post.tagged_with(params[:tag])
		flash.now[:notice]="There is nothing match the \""+params[:tag]+"\"" if @posts.blank?
		render :action => :index
	end
	def area
		@posts=Area.find(params[:id]).posts.all.paginate :page => params[:page],:per_page => 10
		@area=Area.find(params[:id])
	end
	def archive
		@posts=(if params[:month]
		Post.created_at_in_year(params[:year]).created_at_in_month(params[:month])
		else
			Post.created_at_in_year(params[:year])
		end).paginate  :page => params[:page],:per_page => 10
	end
	
	
	
end
