class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map{|audition| audition.actor}
    end
    def locations
        self.auditions.map{|audition| audition.location}
    end

    def  lead
        lead = self.auditions.find{|audition| audition.hired}
        lead ? lead : "No actor has been hired for this role"
    end

    def understudy

        hireds = Audition.where(hired: true, role: self)
        understudy = hireds[1]
        understudy ? understudy : "No actor has been hired for understudy for this role"
    end
  end