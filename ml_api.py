from fastapi import FastAPI
from pydantic import BaseModel 
import json 


app = FastAPI()

class model_input (BaseModel):
    age : int
    average_income : float
    bmi : float
    children : int
    smoker_yes : bool


insurance_model = (open('finalized_model.sav', "rb"))

@app.post('/insurance_prediction')

def insurance_pred(input_parameters : model_input):
    input_data = input_parameters.json()
    input_dictionary = json.loads(input_data)

    
    age = input_dictionary['age']
    average_income = input_dictionary['income']
    bmi = input_dictionary['bmi']
    children = input_dictionary['children']
    smoker = input_dictionary ['smoker']


    input_list = [age, average_income, bmi, children, smoker]

    prediction = insurance_model.predict([input_list])

    print(prediction)
