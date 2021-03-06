library(rstan)

model = "
data {
  real y;
}
parameters {
  real theta;
}
model {
  y ~ normal(theta,1);
  theta ~ double_exponential(0,1);
}"

mod = stan_model(model_code = model)

samps = sampling(mod, list(y=1), iter=100000)

theta = extract(samps, "theta")$theta
hist(theta, freq=F, 1000)
curve(f(x, y=y, V, m, b)/py$value, add=T, col='red')


