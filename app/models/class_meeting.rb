class ClassMeeting < ActiveRecord::Base
    has_one :users,  foreign_key: 'student_id'
end
