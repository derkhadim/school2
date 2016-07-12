class NoninscrisController < ApplicationController
  def index
  	@students = Student.where(status: nil)
  end
end
