# AFTER MIDNIGHT PT.1

=begin



(Understand the Problem):
  •	(Inputs):

  •	(Outputs):

  •	(Questions):

  •	(Rules):
    o	(Explicit):



    o	(Implicit):


  •	(Mental Model):



(Examples / Test Cases):



(Data Structure):

(Algorithm):


=end

# (Code)

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(delta_time)
  delta_time = delta_time % MINUTES_PER_DAY
  hours,minutes = delta_time.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d',hours, minutes)
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
time_of_day(-1437) #== "00:03"
time_of_day(3000) #== "02:00"
time_of_day(800) #== "13:20"
time_of_day(-4231) #== "01:29"