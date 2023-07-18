class List < ApplicationRecord

    priority = ['None', 'Low', 'Medium', 'High']

    def start_date_time
        start_date_time.strftime('%d %b %Y').uniq.join('-')
    end

    def end_date_time
        end_date_time.strftime('%d %b %Y').uniq.join('-')
    end

end 