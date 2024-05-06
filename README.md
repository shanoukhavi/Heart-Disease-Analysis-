# Heart Disease Analysis in R

## Project Overview
This project analyzes heart disease data to uncover potential health insights and patterns. Using R, we explore various aspects of heart health, focusing on cholesterol levels, chest pain types, and other cardiovascular indicators.

## Data Description
The dataset includes the following features related to heart disease:
- **Age**: Age of the patient.
- **Sex**: Sex of the patient (Male/Female).
- **Chest Pain Type** (`cp`): Type of chest pain experienced by the patient categorized into 4 types:
  - 1: Typical angina
  - 2: Atypical angina
  - 3: Non-anginal pain
  - 4: Asymptomatic
- **Resting Blood Pressure** (`trtbps`): Resting blood pressure (in mm Hg).
- **Cholesterol** (`chol`): Serum cholesterol in mg/dl.
- **Fasting Blood Sugar** (`fbs`): Fasting blood sugar > 120 mg/dl (1 = true; 0 = false).
- **Rest ECG** (`restecg`): Resting electrocardiographic results showing heart's electrical activity.
- **Max Heart Rate Achieved** (`thalach`).
- **Exercise Induced Angina** (`exang`): Angina induced by exercise (1 = yes; 0 = no).
- **Oldpeak**: ST depression induced by exercise relative to rest.
- **Slope of the Peak Exercise ST Segment** (`slope`).
- **Number of Major Vessels** (`ca`): Number of major vessels colored by fluoroscopy (0-3).
- **Thal**: A blood disorder called thalassemia (3 = normal; 6 = fixed defect; 7 = reversible defect).
- **Target**: Diagnosis of heart disease (1 = more chance of heart attack; 0 = less chance).

## Visualizations
The project includes several visualizations to better understand the data and the relationships between different variables. These include:
- Line charts
- Histograms
- Bar charts
- Pie charts
- Scatter plots

## Installation
To run this project, you will need to install R and the following R packages:
- `ggplot2`
- `dplyr`
- `tidyverse`
- `plotrix`

You can install these packages using the following commands:
```r
install.packages("ggplot2")
install.packages("dplyr")
install.packages("tidyverse")
install.packages("plotrix")
