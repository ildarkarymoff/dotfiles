#!/usr/bin/env bash

source $HOME/dev/random/weather/.venv/bin/activate
export OWM_APP_ID="Your OpenWeatherMap App ID here"
python $HOME/dev/random/weather/weather.py
deactivate
