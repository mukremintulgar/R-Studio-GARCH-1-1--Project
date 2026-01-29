# =========================
# 1. Libraries
# =========================
library(quantmod)
library(rugarch)

# =========================
# 2. Data Download
# =========================
getSymbols("^GSPC", src = "yahoo",
           from = "2015-01-01",
           to   = "2024-01-01")

prices <- Cl(GSPC)

# =========================
# 3. Log Returns
# =========================
returns <- diff(log(prices))
returns <- na.omit(returns)

# =========================
# 4. GARCH(1,1) Specification
# =========================
spec <- ugarchspec(
  variance.model = list(model = "sGARCH", garchOrder = c(1,1)),
  mean.model     = list(armaOrder = c(0,0), include.mean = TRUE),
  distribution.model = "norm"
)

# =========================
# 5. Model Estimation
# =========================
fit <- ugarchfit(spec = spec, data = returns)

# =========================
# 6. Results
# =========================
show(fit)

# =========================
# 7. Conditional Volatility
# =========================
volatility <- sigma(fit)

plot(volatility,
     main = "Conditional Volatility (GARCH(1,1))",
     ylab = "Volatility",
     xlab = "Time")

