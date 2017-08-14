class QuestionsController < ApplicationController

  ANSWERS =
  {
    option1: "I don't care, get dressed and go to work!",
    option2: "Silly question, get dressed and go to work!"
  }


  def ask
   # It's totally fine to have nothing here :)
  end

  def answer
    input = params[:silly_question]
    @answer = ""

    if input == "I am going to work right now!"
      @answer = "Good for you!"
    elsif input.include? "?"
      @answer = ANSWERS[:option2]
    else
      @answer = ANSWERS[:option1]
    end
  end
end
