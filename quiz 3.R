> fit <- lm(mpg~wt + factor(cyl), data = mtcars)
> summary(fit)$coef
Estimate Std. Error   t value     Pr(>|t|)
(Intercept)  33.990794  1.8877934 18.005569 6.257246e-17
wt           -3.205613  0.7538957 -4.252065 2.130435e-04
factor(cyl)6 -4.255582  1.3860728 -3.070244 4.717834e-03
factor(cyl)8 -6.070860  1.6522878 -3.674214 9.991893e-04
> fit_wo <- lm(mpg~factor(cyl), data = mtcars)
> summary(fit_wo)$coef
Estimate Std. Error   t value     Pr(>|t|)
(Intercept)   26.663636  0.9718008 27.437347 2.688358e-22
factor(cyl)6  -6.920779  1.5583482 -4.441099 1.194696e-04
factor(cyl)8 -11.563636  1.2986235 -8.904534 8.568209e-10
> fit_int <- lm(mpg~wt*factor(cyl), data = mtcars)
> summary(fit_int)$coef
Estimate Std. Error    t value     Pr(>|t|)
(Intercept)      39.571196   3.193940 12.3894599 2.058359e-12
wt               -5.647025   1.359498 -4.1537586 3.127578e-04
factor(cyl)6    -11.162351   9.355346 -1.1931522 2.435843e-01
factor(cyl)8    -15.703167   4.839464 -3.2448150 3.223216e-03
wt:factor(cyl)6   2.866919   3.117330  0.9196716 3.661987e-01
wt:factor(cyl)8   3.454587   1.627261  2.1229458 4.344037e-02
> fit_new <-lm(mpg ~ I(wt * 0.5) + factor(cyl), data = mtcars)
> summary(fit_new)$coef
Estimate Std. Error   t value     Pr(>|t|)
(Intercept)  33.990794   1.887793 18.005569 6.257246e-17
I(wt * 0.5)  -6.411227   1.507791 -4.252065 2.130435e-04
factor(cyl)6 -4.255582   1.386073 -3.070244 4.717834e-03
factor(cyl)8 -6.070860   1.652288 -3.674214 9.991893e-04
> ?mtcars
> fit_n <-lm(mpg ~ I(wt * 0.5), data = mtcars)
> summary(fit_n)$coef
Estimate Std. Error   t value     Pr(>|t|)
(Intercept)  37.28513   1.877627 19.857575 8.241799e-19
I(wt * 0.5) -10.68894   1.118202 -9.559044 1.293959e-10