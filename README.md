*This is a sample teaching lesson for a 20 minute session from a Data Science course on linear regression (e.g., DSCI 561 Regression I). See [Linear Regression Course](https://github.com/ttimbers/UBC-stat-sample-lesson/blob/master/README.md#linear-regression-course) below for more details about the course as a whole.*

---

## Sample lesson - Simple linear regression models in R

## Important lesson links:
- [Lesson slides](doc/fit_interp_lm_R_slides.pdf)
- Lesson R code
    - [R script](src/fit_interp_lm_R.R)
    - [narrated R Markdown](src/fit_interp_lm_R.Rmd)
- [Group challenge question](https://tinyurl.com/UBC-stat-group-challenge)

## Lesson context
[This 20 minute lesson excerpt](doc/fit_interp_lm_R_slides.pdf) sits in a lecture about 1/4 of the way into the course. Before this lesson, students will have learned the following:
- model notation in R
- one-way & two-way ANOVA
    - theory
    - how to do in R with `aov()`
    - how to do in R with `lm()` (including reference-treatment parameterization)
    - interaction effects

- linear regression via ordinary least squares (theory)

### Lesson learning objectives:
By the end of this lesson students are expected to be able to:
- fit a simple linear model in R
- interpret the output of the simple linear model object in R
- use three functions from the `broom` package (`tidy`, `glance` and `augment`) to extract model parameters, measures of model complexity and quality, as well as residuals and predicted values as tidy data

---

# Linear Regression Course

## Short Description
*(taken from public description of UBC MDS course DSCI 561)*

Linear models for a quantitative response variable, with multiple categorical and/or quantitative predictors. Matrix formulation of linear regression. Model assessment and prediction.

## Course Learning Outcomes
*(taken from public description of UBC MDS course DSCI 561)*

By the end of the course, students are expected to be able to:

- Fit and interpret a linear regression model.
- Identify whether a linear regression model is appropriate for a given dataset.
- Critique a specific regression model applied to a given dataset on the basis of both diagnostic plots and hypothesis tests.
- Specify and interpret interaction terms and nonlinear terms.

## Reference Material
*(adapted from public description of UBC MDS course DSCI 561)*
- [Faraway, Julian J. Linear Models with R, 2nd Edition. Chapman and Hall, 2014.](https://login.ezproxy.library.ubc.ca/login?url=http://www.ubc.eblib.com/patron/FullRecord.aspx?p=1640577)
- [`broom` package in R](https://cran.r-project.org/web/packages/broom/vignettes/broom.html)
