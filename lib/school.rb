require 'pry'
class School
    attr_accessor :name, :roster
    def initialize (name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade]
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
            # binding.pry
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        sorted = {}
        @roster.sort.each do |grade, array|
            sorted[grade] = array.sort
        end
        sorted
    end
end
