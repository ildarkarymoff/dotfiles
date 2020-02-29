import json
import os

import requests
import typing as t

CITY = 'Novosibirsk'
OWM_APP_ID = os.getenv('OWM_APP_ID')
OWM_API_URL = 'http://api.openweathermap.org/data/2.5/weather?q={city}&appid={app_id}&units=metric'

FINAL_URL = OWM_API_URL.format(
        city=CITY,
        app_id=OWM_APP_ID,
    )


def fetch_weather():
    temp = '?'
    try:
        res = requests.get(FINAL_URL)

        if res:
            weather_data = json.loads(res.text)
            temp = __extract_temp(weather_data)
    except Exception:
        pass

    print(f'{temp} °C')


def __extract_temp(weather_data: t.Dict[str, t.Any]) -> str:
    if 'main' in weather_data:
        if 'temp' in weather_data['main']:
            return weather_data['main']['temp']

    return '?'


if __name__ == '__main__':
    fetch_weather()
