class AccesslogsController < ApplicationController
  protect_from_forgery except: :create

  def index
    @access_log_array = []
    @access_logs_urls = []
    return unless params.has_key?(:settings)
    token = params[:settings][:token]
    url = params[:settings][:url]
    @date = params[:settings][:date]
    @token = Token.find_by(identifier: token)
    @accesslogs = @token.access_logs

    24.times do |hour|
      begin_time = Time.zone.parse("#{@date} #{hour}:00")
      end_time = Time.zone.parse("#{@date} #{hour}:59")

      if url.present?
        @access_log_array << @accesslogs.where(created_at: begin_time..end_time, url: url).count
        @url = url
      else
        @access_log_array << @accesslogs.where(created_at: begin_time..end_time).count
        @url = "WEBサイト全体"
      end
    end

    @sum_access_log_count = 0
    @access_log_array.each do |count|
      @sum_access_log_count += count
    end

    @accesslogs.each do |access_log|
      @access_logs_urls << [access_log.url, access_log.url]
    end
  end

  def token_create
    @access_log_array = []
    @access_logs_urls = []

    token = Token.new
    random = SecureRandom.uuid
    token.identifier = random
    token.save
    @tag = "<script id=\"data\" data-token=\"#{token.identifier}\" async src=\"http://localhost:3000/pv_analytics.js\"></script>"
    render :index
  end

  def create
    response.headers["Access-Control-Allow-Origin"] = "*"
    response.headers["Access-Control-Allow-Methods"] = "POST"
    response.headers["Access-Control-Allow-Headers"] = "Content-Type"
    token = Token.find_by(identifier: params[:token])
    token.access_logs.create(url: params[:url])
  end
end

