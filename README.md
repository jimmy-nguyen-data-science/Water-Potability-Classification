# Water Potability Classification Project 

## Completed: 28 June 2021 

## Collaborators 
- Sarah Alqaysi
- Sai Thiha

## Project Objective
The goal of this project is to classify the safety and quality of drinkable water.

## Project Background 
One of the most basic human rights in life is to have access to a drinkable water that adheres to all safety criteria and regulations. H.H. Mitchell from the Journal of Biological Chemistry 158 stated that the brain and heart are composed of 73% water. This means that dehydration can negatively affect several cognitive functions such as attention, memory, and mood. Both national and local authorities as well as private companies should be always monitoring and enforcing the right procedure when it comes to water filtration systems, down to every single house. Water potability is essential to human survival and should be prioritized for detecting safe drinking water. 

### Methodology
- Obtain data
- Define purpose 
- Data exploration
- Data preprocessing
- Data Splitting
- Predictive Model Strategies (Linear vs. Non-linear Models)
- Validation and Testing
- Results and Final Model Selection 
- Conclusion

### Technologies
- R-programming
- Shiny App (R)
- Powerpoint
- Word

## Understanding the Data 
There are nine water quality metrics that describe the potability of a water sample. The pH value evaluates the acid-base range of water. This serves as the condition of water status for acidic or alkaline. Hardness is an observed metric of how much hardness is in raw water when coming in contact with calcium and magnesium salts. Total dissolved solids produce an unpleasant taste and diluted color in water through contact with minerals such as potassium, calcium or magnesium, etc. The amount of chlorine and chloramine in public water systems determines the safety for potable water. Sulfate concentrations are commonly found in sea water as a result from minerals, soils and rocks. A useful characteristic such as conductivity where theelectrical conductivity value should not exceed 400 μS/cm according to WHO standards. Another strong indicator is the total amount of organic carbon compounds found in water sources which can determine the potable water quality. Whereas trihalomethanes levels up to 80 ppm are considered safe for drinking water. Lastly, turbidity describes the amount of solid matter present in the suspended state of water. Since potability characters may overlap with one another of these features, higher performance may be associated with more complex models, resulting in the expense of computing time to determine the potability.

## Predictive Models
- Linear Discriminant Analysis 
- Mixed Discriminant Analysis
- Neural Networks
- K-Nearest Neighbors 
- Naive Bayesian 
- SVM (Radial Function)
- Partial Least Squares 
- MARS 
- Nearest Shrunken Centroids 
- Logistic Regression


## Presentations and Reports
* [Final Report](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Reports/Project%20Report.pdf)
* [Presentation Slides](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Presentations/Project%20Presentation.pdf)
* [R-programming Code](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Code/R%20Code/Project%20-%20R%20code.pdf)
* [Shiny App](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/tree/main/Code/Shiny%20App)


**Shiny Web App Demo - New Data Predictions**
![Shiny App Demo](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Code/Shiny%20App/Demo.png)

## Data Visualizations
![Class Distribution](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Data%20Visuals/Class%20Distributions.png)

![Correlation Matrix of Predictors](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Data%20Visuals/Correlation%20Matrix%20of%20Predictors.png)

## Performance Results

![ROC-AUC Curve of All Models](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Data%20Visuals/ROC-AUC%20Curves%20for%20all%20Models.png)

![Average ROC-AUC Values](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Data%20Visuals/Average%20ROC%20values.png)

![Final Selected Models Test Performance](https://github.com/Jimmy-Nguyen-Data-Science-Portfolio/Water-Potability-Classification/blob/main/Data%20Visuals/Final%20Model%20Test%20Performance.png)


## Original Data 
[Kaggle - Water Quality](https://www.kaggle.com/adityakadiwal/water-potability)

## References
Mitchell, H. Hamilton, T., Steggerda, F., Bean, H. (May 1945). THE CHEMICAL
COMPOSITION OF THE ADULT HUMAN BODY AND ITS BEARING ON THE
BIOCHEMISTRY OF GROWTH, Journal of Biological Chemistry, Volume 158, Issue
3, 1945, Pages 625-637, ISSN 0021-9258.https://doi.org/10.1016/S00219258(19)513394.
https://www.sciencedirect.com/science/article/pii/S0021925819513394.

Hardness of Water. Usgs.gov. (2021). Retrieved 28 June 2021, from
https://www.usgs.gov/special-topic/water-science-school/science/hardness-water?qt-
science_center_objects=0#qt-science_center_objects.

Kadiwal, A. Water Quality. Kaggle.com. Retrieved 28 June 2021, from
https://www.kaggle.com/adityakadiwal/water-potability.

Enderlein, U., Enderlein, R., and Williams W. Water Quality Requirements. WHO. Retrieved 28
June 2021, from
https://www.who.int/water_sanitation_health/resourcesquality/wpcchap2.pdf
