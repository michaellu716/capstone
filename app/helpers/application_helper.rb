module ApplicationHelper
    def readable_time(time)
        time.strftime("%m/%d/%Y, %I:%M%P")
    end
    def display_day(day)
        time.strftime("%d")
    end
end
