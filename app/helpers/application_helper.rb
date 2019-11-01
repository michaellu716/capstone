module ApplicationHelper
    def readable_time(time)
        time.strftime("%m/%d/%Y, %I:%M%P")
    end
    def display_day(day)
        time.strftime("%d")
    end
    def readable_month(time)
        time.strftime("%b")
    end
    def readable_dayofmonth(time)
        time.strftime("%d")
    end
    def readable_week(time)
        time.strftime("%A")
    end
end
