import json
import requests

url = "http://127.0.0.1:8000/insurance_prediction"

input_data_for_model = {

   
    "age" : 18,
    "average_income" : 10753,
    "bmi" : 33.7,
    "children": 0,
    "smoker_yes" : 1


    
}

input_json = json.dumps(input_data_for_model)

response = requests.post(url, data= input_json)

print(response.text)