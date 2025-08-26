# Multivariate-Time-Series-Analysis
Timeseries Analysis using R
# Multivariate Time Series Analysis: Inflation, Exchange Rate, and Nifty 50 in India

## 📜 Overview

This project presents a multivariate time series analysis of key macroeconomic variables in India: **Inflation Rate Change (IChange)**, **Exchange Rate Change (EChange)**, and **Nifty 50 Index Change (NChange)**. The study utilizes a **Vector Autoregression (VAR)** model to investigate the dynamic relationships and interdependencies among these variables. The analysis focuses on data from January 2015 to January 2025.

---

## 🧐 Motivation

Understanding the complex interplay between inflation, currency fluctuations, and stock market performance is crucial for policymakers and investors in a developing economy like India. This paper aims to shed light on how these variables influence each other and how shocks to one variable propagate through the system, affecting the others.

---

## ⚙️ Methodology

### Data

* **Data Source:** Monthly data from January 2015 to January 2025 (109 observations).
* **Variables:**
    * **IChange:** Monthly percentage change in the inflation rate.
    * **EChange:** Monthly percentage change in the INR/USD exchange rate.
    * **NChange:** Monthly percentage change in the Nifty 50 index.

### Key Techniques

* [cite_start]**Vector Autoregression (VAR) Model:** A robust framework for modeling the dynamic interactions of stationary time series[cite: 14]. [cite_start]The model treats each variable (IChange, EChange, NChange) as endogenous, meaning they can all influence one another within the system[cite: 15].
* [cite_start]**Stationarity Testing:** The **Augmented Dickey-Fuller (ADF) test** was used to confirm that all variables are stationary at level, which allows for direct application of the VAR model without differencing[cite: 90].
* [cite_start]**Lag Selection:** The optimal lag order of 4 was determined using the **Akaike Information Criterion (AIC)**, balancing model complexity and explanatory power[cite: 93, 94, 95].
* [cite_start]**CUSUM Test:** Used to check for parameter stability over the sample period, confirming the model's structural stability[cite: 110, 141].
* **Granger Causality Test:** A statistical test to determine if past values of one variable are predictive of another. [cite_start]The results revealed no significant Granger causality among the variables, but they did show a significant **instantaneous causality**, suggesting simultaneous co-movement driven by external stimuli[cite: 146, 155, 160].
* [cite_start]**Impulse Response Function (IRF):** Measures how a one-time shock to one variable impacts other variables over time, revealing the ripple effect of economic shocks[cite: 167, 168, 169].
* [cite_start]**Variance Decomposition (FEVD):** Quantifies the proportion of each variable's forecast error variance that can be attributed to shocks from the other variables[cite: 188, 189].

---

## 📊 Key Findings

* [cite_start]**No Granger Causality, but Instantaneous Causality:** While no variable was found to predict another in a lead-lag fashion, the existence of instantaneous causality indicates that the variables tend to move together simultaneously in response to shared economic events[cite: 155, 160].
* **Impulse Response Analysis:** The IRF analysis provides insights into the magnitude and persistence of effects when a shock occurs in one variable.
* **Variance Decomposition Insights:**
    * [cite_start]**EChange:** The forecast error variance for the exchange rate is almost entirely explained by its own shocks, suggesting it's largely self-driven[cite: 232, 238].
    * [cite_start]**NChange:** The Nifty 50 index shows some interdependence, with its forecast variance influenced by shocks to both the exchange rate and inflation[cite: 233, 234, 238].
    * [cite_start]**IChange:** Inflation changes are predominantly influenced by their own shocks, but a small, gradually increasing influence from other variables becomes apparent over longer time horizons[cite: 235, 236, 239].

---

## 📈 Visualizations

The analysis includes several key visualizations to illustrate the findings:

* [cite_start]**Transmission Channels Flowchart:** A visual representation of how exchange rate depreciation leads to cost-push inflation, which in turn influences the Nifty 50 index and investor expectations, creating a feedback loop[cite: 62, 71]. * [cite_start]**OLS-CUSUM Plots:** These plots confirm the stability of the model's parameters, showing that the cumulative sums for each variable remain within the confidence intervals[cite: 141].
* **Impulse Response Function (IRF) Plots:** Visuals depicting how inflation responds to shocks from the Nifty 50 and the exchange rate over a 20-month period.
* **Forecast Error Variance Decomposition (FEVD) Plots:** Bar charts showing the percentage of each variable's forecast error variance explained by shocks from itself and the other variables over a 10-month horizon.

---

## ✍️ Conclusion

This study demonstrates the applicability of VAR analysis for understanding macro-financial linkages in India. [cite_start]The findings provide valuable insights for policymakers aiming to manage inflation and investors seeking to navigate India's complex economic landscape[cite: 249, 251]. [cite_start]While the model captures essential dynamics, future work could explore non-linearities or structural breaks to enhance robustness[cite: 250].

---

## 🔗 Related Work

* Bicchal, M. (2006). [cite_start]*Monetary Policy and Inflation in India: A Structural VAR Analysis*[cite: 254].
* Patnaik, A. (2010). [cite_start]*STUDY OF INFLATION IN INDIA: A COINTEGRATED VECTOR AUTOREGRESSION APPROACH*[cite: 255, 256].
* [cite_start]Jones & Kaul (1996)[cite: 44].
* [cite_start]Bhattacharya (2016)[cite: 47].
