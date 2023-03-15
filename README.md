# mechacar-statistics

## Linear Regression to predict MPG

![](regression.png)

The linear regression model was used to predict the miles per gallon (mpg) of MechaCar prototypes. The model includes five predictor variables: vehicle length, vehicle weight, spoiler angle, ground clearance, and whether the car has all-wheel drive (AWD).
The output shows that vehicle length, ground clearance, and the intercept (or constant term) are statistically significant predictors of mpg. The coefficients of these variables provide a non-random amount of variance to the mpg values in the dataset.
The slope of the linear model is not considered to be zero because the p-value of the F-statistic is very small (5.35e-11), indicating that at least one of the predictor variables has a significant effect on the response variable (mpg).
The adjusted R-squared value of 0.68 suggests that the model explains about 68% of the variance in mpg. While this is a moderate level of prediction, it still indicates that the linear model can effectively predict mpg of MechaCar prototypes to some extent.



