class DaysController < ApplicationController
before method

def list
  @student_array = User.where("admin='false'").to_a
  @pairs =[]
  while @student_array.size > 1 do
    @pair = @student_array.slice!(0,2)
    @pairs << @pair
    @unpaired = @student_array
  end
    @pairs << @student_array
  @pairs
end

def new
@list =
end

def create
@list

def create
  @list= Day.new(Today,(@pairs.to_s) )
  @list.save

  end


end
end
