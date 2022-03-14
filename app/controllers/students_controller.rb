class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        student_grades = Student.all.order(grade: :desc)
        render json: student_grades
    end

    def highest_grade
        top_student = Student.all.order(grade: :desc).first
        render json: top_student
    end

end