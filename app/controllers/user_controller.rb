class UserController < ApplicationController
  def survey
    @ques = SurveyQues.all

  end
  def success
    @tem = 1
    params.each do |key, value|
      ques = User.new
      if(@tem.even?)
        if(value!="action")
          @ans_val = value
          ques.ques = @ques_val
          ques.ans = @ans_val
          ques.save
        end
      else
        if(value!="success")
          @ques_val = value
        end
      end
      @tem+=1
    end
    render text: "<div style='color:skyblue'><h1>Data Saved.........</h1></div>"
  end


end