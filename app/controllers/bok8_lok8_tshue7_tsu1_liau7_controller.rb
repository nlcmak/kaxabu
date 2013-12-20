class Bok8Lok8Tshue7Tsu1Liau7Controller < ApplicationController
  def index
    @bok8_lok8s = Bok8Lok8.all
  end
end
