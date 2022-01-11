class StudentsController < ApplicationController
    def index
        students = Student.all 
        render json: students
    end

    def grades
        students = Student.all.order('grade DESC')
        render json: students 
    end

    def highest_grade
        high_grade = Student.all.order(:grade).last
        render json: high_grade
    end

end
