class CalendarEventsController < ApplicationController
  #authenticate_user! = ログインをしているか確認してくれるもの
  before_action :authenticate_user!

  #カレンダー予定の「一覧」の実装
  def index 
    user_id = current_user.id
    calendar_events = CalendarEvent.where(user_id: user_id)
    render json: calendar_events  
  end

  private

  def calendar_event_params 
  
  end

end
