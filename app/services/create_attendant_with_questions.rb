class CreateAttendantWithQuestions

    def self.call(attendant_params, questions_params = [])
        attendant = Attendant.new(attendant_params)
        puts attendant
        if attendant.save && questions_params.present?
            questions_params.each do |q|
                attendant.questions.create(question: q) if q.present?
            end
        end
        attendant
    end

end
