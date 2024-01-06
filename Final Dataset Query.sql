create or replace table taxi-project-410218.taxi_data_engineering_dataset.taxi_data_final as 
select
ft.vendorid,
dt.tpep_pickup_datetime,
dt.tpep_dropoff_datetime,
rt.rate_code_name,
pc.passenger_count,
td.trip_distance,
pl.pickup_latitude,
pl.pickup_longitude,
dl.dropoff_latitude,
dl.dropoff_longitude,
pt.payment_type_name,
ft.fare_amount,
ft.extra,
ft.mta_tax,
ft.tip_amount,
ft.tolls_amount,
ft.improvement_surcharge

from 
taxi-project-410218.taxi_data_engineering_dataset.fact_table ft join
taxi-project-410218.taxi_data_engineering_dataset.datetime_dim dt on ft.datetime_id = dt.datetime_id join
taxi-project-410218.taxi_data_engineering_dataset.dropoff_location_dim dl on ft.dropoff_location_id = dl.dropoff_location_id join
taxi-project-410218.taxi_data_engineering_dataset.passenger_count_dim pc on ft.passenger_count_id = pc.passenger_count_id join
taxi-project-410218.taxi_data_engineering_dataset.payment_type_dim pt on ft.payment_type_id = pt.payment_type_id join
taxi-project-410218.taxi_data_engineering_dataset.pickup_location_dim pl on ft.pickup_location_id = pl.pickup_location_id join
taxi-project-410218.taxi_data_engineering_dataset.rate_code_dim rt on ft.rate_code_id = rt.rate_code_id join
taxi-project-410218.taxi_data_engineering_dataset.trip_distance_dim td on ft.trip_distance_id = td.trip_distance_id;