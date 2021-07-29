SELECT start_date, end_date,
                  DATE(start_date),
				  TIME(start_date),
				  CASE
				    WHEN TIME(start_date) < "08:00:00" THEN "08:00:00"
					WHEN TIME(start_date) > "16:30:00" THEN "16:30:00"
					ELSE TIME(start_date)
				  END AS minha_conta
  FROM trips