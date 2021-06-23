module ApplicationHelper
    def convert_to_human_readable_date(date)
        date.strftime("%b %-d, %Y")
    end

    def convert_to_human_readable_time(time)
        time.strftime(" at %l:%M %P")
    end
end
