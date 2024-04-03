seconds = 14926

hours = seconds // 3600

leftover_seconds = seconds % 3600

minutes = leftover_seconds // 60

final_seconds = leftover_seconds % 60

print(str(seconds) , "seconds is the same as")
print(str(hours) , "hours," , minutes  , "minutes, and" , final_seconds , "seconds")