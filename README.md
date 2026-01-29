# GARCH Volatility Modeling in R

## Description
This project applies GARCH-based volatility models to analyze and forecast financial return volatility. Both GARCH(1,1) and eGARCH(1,1) specifications are estimated using Student-t distributed errors to capture volatility clustering, persistence, and asymmetric effects.

## Data
- Daily closing prices  
- Source: Yahoo Finance  
- Example asset: S&P 500 Index  

## Method
- Log return calculation  
- GARCH(1,1) estimation  
- eGARCH(1,1) estimation  
- Model comparison using AIC, BIC, and log-likelihood  

## Tools
- R  
- quantmod  
- rugarch  

## Output
- Estimated volatility models  
- Conditional volatility series  
- Model comparison results  
