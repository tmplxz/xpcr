#!/bin/bash
# TODO full command
# for d in "bitcoin_dataset_without_missing_values" "m1_quarterly_dataset" "solar_weekly_dataset" "tourism_quarterly_dataset" "fred_md_dataset" "nn5_daily_dataset_without_missing_values" "electricity_weekly_dataset" "nn5_weekly_dataset" "hospital_dataset" "m3_quarterly_dataset" "m1_monthly_dataset" "traffic_weekly_dataset" "m4_weekly_dataset" "tourism_monthly_dataset" "covid_deaths_dataset" "cif_2016_dataset" "pedestrian_counts_dataset" "vehicle_trips_dataset_without_missing_values"
# TODO ws022
# ------------------
# TODO GPU
# TODO ws05

for d in "bitcoin_dataset_without_missing_values" "m1_quarterly_dataset" "solar_weekly_dataset" "tourism_quarterly_dataset" "fred_md_dataset" "nn5_daily_dataset_without_missing_values" "electricity_weekly_dataset" "nn5_weekly_dataset" "hospital_dataset" "m3_quarterly_dataset" "m1_monthly_dataset" "traffic_weekly_dataset" "m4_weekly_dataset" "tourism_monthly_dataset" "covid_deaths_dataset" "cif_2016_dataset" "pedestrian_counts_dataset" "vehicle_trips_dataset_without_missing_values"
do
    for m in "deepar" "deepstate" "deepfactor" "deeprenewal" "gpforecaster" "mqcnn" "mqrnn" "nbeats" "tempfus" "wavenet" "feedforward"
    do
        for s in "42" "135" "468" "129" "124" "-1"
        do
        python run.py --dataset $d --model $m --ds-seed $s --output-dir $1
        done
    done
done
# TODO if there is enough time, also run on weather?
# TODO fix parameter assessment error for "naiveseasonal" "rotbaum"
# TODO fix error for "transformer"
# TODO also run "arima" (takes very long)
# TODO only single series -> no subsampling possible! "us_births_dataset" "saugeenday_dataset" "sunspot_dataset_without_missing_values"
# TODO investigate errors for "m4_monthly_dataset" "traffic_hourly_dataset" "electricity_hourly_dataset" "solar_10_minutes_dataset" "kdd_cup_2018_dataset_without_missing_values" "kaggle_web_traffic_weekly_dataset" "m4_quarterly_dataset" "cif_2016_dataset" "nn5_daily_dataset_without_missing_values" "tourism_yearly_dataset" "tourism_quarterly_dataset" "tourism_monthly_dataset" "m1_yearly_dataset" "m1_quarterly_dataset" "m1_monthly_dataset" "m3_yearly_dataset" "m3_quarterly_dataset" "m3_monthly_dataset" "m3_other_dataset" "m4_weekly_dataset" "m4_daily_dataset" "m4_hourly_dataset" "car_parts_dataset_without_missing_values" "hospital_dataset" "fred_md_dataset" "nn5_weekly_dataset" "traffic_weekly_dataset" "electricity_weekly_dataset" "solar_weekly_dataset" "dominick_dataset" "us_births_dataset" "saugeenday_dataset" "sunspot_dataset_without_missing_values" "covid_deaths_dataset" "weather_dataset" "pedestrian_counts_dataset" "bitcoin_dataset_without_missing_values" "vehicle_trips_dataset_without_missing_values" "australian_electricity_demand_dataset" "rideshare_dataset_without_missing_values" "temperature_rain_dataset_without_missing_values"
