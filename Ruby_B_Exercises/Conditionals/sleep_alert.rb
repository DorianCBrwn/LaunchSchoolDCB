status = ['awake', 'tired'].sample

feeling = if status == 'awake'
            "Be productive!"
          else 
            "Go to sleep!"
          end
puts feeling
