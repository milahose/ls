status = ['awake', 'tired'].sample

sleep_status = if status == 'awake'
    'Be productive!'
  else 
    'Go to sleep!'
  end

puts sleep_status