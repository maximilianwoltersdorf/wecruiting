class InterviewAnswersController < ApplicationController

	def index
  end

	def new
  end

	def create
    interview_answer = params[:interview_answer]
    
    # hier muss irgendwie für jede Antwort ein eigener Record in die DB gespeichert werden. Siehe dazu auch Fehler im Formular im Frontend.
    InterviewAnswer.create(
      :interview_question_id  => interview_answer[:interview_question_id],
      :user_answer    				=> interview_answer[:user_answer],
      :user_email							=> interview_answer[:user_email],
      :newsletter							=> interview_answer[:newsletter]
    )
    puts params[:interview_answer]
    # flash[:notice] = "Vielen Dank für Ihr Feedback!" # TODO
    redirect_to root_path
  end

end
