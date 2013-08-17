class SurveyController < ApplicationController

  def  adminn

  end
  def addques
   
  end

  def check
    @email = request["email"]
    @password = request["password"]
      #while(@email != " ")
        if(@email == @password)
          redirect_to "/editques"
        else
          redirect_to "/adminn"
        end
      #end
  end


  def create
    @question_value = request["question"]
    @option = request["options"]
    ques = SurveyQues.new
    ques.question = @question_value
    ques.options = @option
    ques.save
    redirect_to "/editques"

  end
  def editques
    @ques = SurveyQues.all
  end
  
   def edit
      @ques_id = request["q_id"]
      ques = SurveyQues.find_by_id(@ques_id)
      @question_value = ques.question
      @option = ques.options
  end
  
  def update
      @ques_id = request["q_id"]
      @question_value = request["question"]
      @option = request["options"]
      ques = SurveyQues.find_by_id(@ques_id)
      ques.question = @question_value
      ques.options = @option
      ques.save 
      redirect_to "/editques"
  end
  
  def delete
      @q_id=request["q_id"]
      SurveyQues.find_by_id(@q_id).delete    
      redirect_to "/editques"
  end
end
