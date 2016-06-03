function overall_income=income(rate,price)
    days_per_week=6;
    shifts_per_day=2;
    hours_per_shift=8;
    
    number_made=rate*hours_per_shift*shifts_per_day*days_per_week;
    
    overall_income=sum(number_made.*price);
end