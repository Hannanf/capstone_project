import streamlit as st
import pandas as pd
from sklearn.preprocessing import  LabelEncoder
import xgboost as xgb
import numpy as np


st.header("Life insurance Premium Prediction")
st.text_input("Enter your age: ", key="age")
data = pd.read_csv("avg_by_region.csv")



encoder = LabelEncoder()
encoder.classes_ = np.load('classes.npy',allow_pickle=True)


best_xgboost_model = xgb.XGBRegressor()
best_xgboost_model.load_model("finalized_model.sav")

if st.checkbox('Show dataframe'):
    data


st.subheader("please select age")
left_column, right_column = st.columns(2)
with left_column:
    inp_species = st.radio(
        'age:',
        np.unique(data['age']))

input_Length1 = st.slider('age', 0, max(data["age"]), 100)
input_Length2 = st.slider('income', 10000, max(data["Length2"]), 1000000)
input_Length3 = st.slider('Cross length(cm)', 0.0, max(data["Length3"]), 1.0)
input_Height = st.slider('Height(cm)', 0.0, max(data["Height"]), 1.0)
input_Width = st.slider('Diagonal width(cm)', 0.0, max(data["Width"]), 1.0)


if st.button('Make Prediction'):
    input_species = encoder.transform(np.expand_dims(inp_species, -1))
    inputs = np.expand_dims(
        [int(input_species), input_Length1, input_Length2, input_Length3, input_Height, input_Width], 0)
    prediction = best_xgboost_model.predict(inputs)
    print("final pred", np.squeeze(prediction, -1))
    st.write(f"Your fish weight is: {np.squeeze(prediction, -1)} Gram")