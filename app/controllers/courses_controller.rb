class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.xml
  def index
    @courses = Course.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.xml
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.xml
  def new
   
  end

  # GET /courses/1/edit
  def edit
   
  end

  # POST /courses
  # POST /courses.xml
  def create
   
  end

  # PUT /courses/1
  # PUT /courses/1.xml
  def update
   
  end

  # DELETE /courses/1
  # DELETE /courses/1.xml
  def destroy
   
  end
end
