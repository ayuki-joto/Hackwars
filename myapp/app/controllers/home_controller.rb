class HomeController < ApplicationController
  def top
    @evaluations = Evaluation.all
        @ev_perspicuity = @ev_device = @ev_voice = @ev_concern = @ev_speed = 0
        @evaluations.each do |evaluation|
            @ev_perspicuity += evaluation.perspicuity.to_f / @evaluations.size
            @ev_device += evaluation.device.to_f / @evaluations.size
            @ev_voice += evaluation.voice.to_f / @evaluations.size
            @ev_concern += evaluation.concern.to_f / @evaluations.size
            @ev_speed += evaluation.speed.to_f / @evaluations.size
        end
        @ev_perspicuity = @ev_perspicuity.round(2)
        @ev_device = @ev_device.round(2)
        @ev_voice = @ev_voice.round(2)
        @ev_concern = @ev_concern.round(2)
        @ev_speed = @ev_speed.round(2)

      @comments = Comment.all

      @comment = Comment.new
  end
  def about
  end
  def rec

    @comments = Comment.all

    @comment = Comment.new

  end

end
