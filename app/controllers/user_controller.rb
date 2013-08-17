class UserController < ApplicationController
  def survey
    @ques = SurveyQues.all

  end
  def success
    puts
    params.each do |key,value|
      Rails.logger.warn "Param #{key}: #{value}"
      ques = User.new
      ques.ques = key
      ques.ans = value
      ques.save
    end
    render text: "Data Saved"
  end
end
