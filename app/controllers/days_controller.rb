class DaysController < ApplicationController
  def new
    @day = Day.new
  end

  def create
    @day = Day.new(day_params)

    @student_array = User.where("admin='false'").to_a.shuffle
    @pairs =[]
    while @student_array.size > 1 do
      @pair = @student_array.slice!(0,2)
      @pairs << @pair
      @unpaired = @student_array
    end
      @pairs << @student_array

    @day.list = @pairs.to_s
    @day.save
  end


  def day_params
        params.require(:day).permit(:date, :list)
      end

end
