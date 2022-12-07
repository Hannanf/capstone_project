import numpy as np
import pandas as pd
from flask import Flask, request, render_template
import pickle

app = Flask(__name__)
model = pickle.load(open('model.pkl', 'rb'))



@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict',methods=['POST'])

def predict():
    feature_list = request.form.to_dict()
    feature_list = list(feature_list.values())
    feature_list = list(map(int, feature_list))
    final_features = np.array(feature_list).reshape(1, 5) 
    
    print (feature_list)
    print (final_features)

    output = model.predict(final_features)[0]

    
   
    return render_template('index.html', prediction_text= output)


if __name__ == "__main__":
    app.run(debug=True)
