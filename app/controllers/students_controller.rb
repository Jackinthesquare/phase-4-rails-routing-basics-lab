class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        render json: Student.order(grade: :desc).first
    end
end
