class Employee

    attr_reader :name, :title,:salary

    def initialize(name, title, salary)
        @name = name
        @title = title
        @salary = salary
    end

    def bonus(multiplier)
        bonus = @salary.to_i * multiplier
    end

    def add_boss(boss)
        @boss = boss
    end
end
# 