class TopicsController < ApplicationController
  
  before_action : set_sub
  before_action : set_topic, except: [:index, :new, :create]
  
  def index
    @topics = @sub.topics.all
  end

  def show
  end

  def new
    @topic = @sub.topics.new
    render partial "form"
  end

  def create
    @topic = @sub.topics.new(topic_params)

    if @topic.save
      redirect_to sub_topic_path(@sub, @topic)

      def sub_topic_path(sub_id, id)
        return "/subs/#{sub_id}/topics/#{id}"
      end

      sub_topic_path(@sub, @topic)

    else

    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def set_sub
      @sub=Sub.find(params[:sub_id])
    end
  
    def set_topic
      @topic = Topic.find(params[:id])
    end


end
