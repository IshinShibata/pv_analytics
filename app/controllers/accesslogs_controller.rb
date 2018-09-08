class AccesslogsController < ApplicationController


  def index
    token = Token.find(1)
    date = params[:date]
    # binding.pry
    @accesslogs = token.access_logs

    @access_log_array = []
    24.times do |hour|
      begin_time = Time.zone.parse("#{date} #{hour}:00")
      end_time = Time.zone.parse("#{date} #{hour}:59")
      @access_log_array << @accesslogs.where(created_at: begin_time..end_time).count
    end
  end


end
