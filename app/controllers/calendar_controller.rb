class CalendarController < ApplicationController
  def index
    #表示内容取得
    calendar_datas = Calendar.find_by_sql([
                                      'select * from calendar where calendar_id = ?',params[:calendar]
                                  ])
    #表示用データ成形
    @datas = [];
    calendar_datas.each do |data|
      @datas += [
          'title' => data['title'],     #"クリスマス!"
          'start' => data['start_time'],#"2015-12-24 00:00:00"
          'end'   => data['end_time'],  #"2015-12-25 24:00:00"
          'detail'=> data['detail'],    #"detail"
          'color' => 'red'
      ]
  end
end
