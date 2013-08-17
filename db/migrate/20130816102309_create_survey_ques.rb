class CreateSurveyQues < ActiveRecord::Migration
  def change
    create_table :survey_ques do |t|
      t.text :question
      t.text :options

      t.timestamps
    end
  end
end
