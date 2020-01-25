# code here!
class School
    attr_accessor :school, :student, :grade
    attr_reader :roster


    def initialize(roster)
        @roster = roster 
        @roster = {}
    end

    def add_student(student, grade)
        #puts "student is #{student} and grade is #{grade}"
        if @roster.length == 0 
            @roster[grade] = [student]
        elsif 
            key_array = @roster.keys
            if key_array.none?(grade)
                @roster[grade] = [student]
            else
                @roster.each do |grade_key, student_array|
                    if grade == grade_key
                        student_array << student
                    end
                end
            end
        end
        #puts @roster
        @roster
    end

    def grade(num)
        @roster.each do |grade_key, student_array|
            if num == grade_key
                return student_array
            end
        end
    end

    #def sort
        # key_array = @roster.keys.sort 
        # i = 0
        # while i < key_array.length do 
        #     @roster.map do |grade_key, student_array| 
        #         if key_array[1] == grade_key
        #     student_array.sort
        # end
        # @roster
    #end

    def sort
         #@roster.keys.sort
        
        @roster.sort.map do |grade_key, student_array| 
            student_array.sort!
            #puts "student array is #{student_array}"
        end
        #puts "roster is #{@roster.sort}"
        @roster
    end


            # @roster.each do |grade_key, student_array|
            #     #puts "roster is #{@roster}, grade key is #{grade_key}, student_array is #{student_array}" 
            #     if grade == grade_key 
            #         student_array << student
            #     end
            # end
       # else
            #@roster[grade] = [student]

        # end
    #     puts @roster
    #     @roster
    # end


end

