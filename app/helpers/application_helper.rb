module ApplicationHelper
    def readable_time(time)
        time.strftime("%m/%d/%Y, %I:%M%P")
    end
end
