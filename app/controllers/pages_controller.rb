class PagesController < ApplicationController

  def list
    @students = User.where("admin='false'")

    @student_array = User.where("admin='false'").to_a.shuffle
    @pairs =[]
    while @student_array.size > 1 do
      @pair = @student_array.slice!(0,2)
      @pairs << @pair
      @unpaired = @student_array
    end
  end
end
