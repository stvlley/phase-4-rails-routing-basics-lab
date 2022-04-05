class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all.sort_by(&:grade).reverse
        render json: students
    end
end
