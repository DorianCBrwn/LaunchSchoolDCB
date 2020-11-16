# Create a mortgage/ car payment loan calculator

def monthly_payment(loan_a, interest, loan_d)
  loan_a * (interest / (1 - (1 + interest)**-loan_d)).round(2)
end

def apr_mi(interest, loan_d)
  float_to_percent(interest) / years_to_months(loan_d)
end

def float_to_percent(num)
  num.to_f / 100.round(2)
end

def years_to_months(years)
  years * 12
end

puts 'What is the loan ammount?'
loan_amount = gets.chomp.to_f

puts 'What is the APR?'
apr = gets.chomp.to_f

puts 'What is the loan duration in years?'
loan_d = gets.chomp.to_f

loan_duration = years_to_months(loan_d)

monthly_rate = apr_mi(apr, loan_d)

monthly_payment = monthly_payment(loan_amount, monthly_rate, loan_duration)

puts "Your monthly interest rate is #{monthly_rate}. " \
  "Your monthly payment is #{monthly_payment} for the next #{loan_duration} months"
