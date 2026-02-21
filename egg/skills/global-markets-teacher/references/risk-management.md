# Risk Management

## Overview
Essential risk management concepts for trading interviews. Understanding risk is as important as understanding return — interviewers want to know you can manage downside.

## 1. Greeks (Derivatives Risk Measures)

### Delta
- First-order price sensitivity: change in option price per $1 change in underlying
- Delta as hedge ratio: delta-neutral portfolios
- Delta as probability proxy (rough approximation of ITM probability)
- Dynamic hedging: rebalancing delta as underlying moves

### Gamma
- Second-order: rate of change of delta
- Gamma risk: large moves require more frequent rehedging
- Long gamma: profitable in large moves (long options)
- Short gamma: profitable in small moves, dangerous in large moves (short options)
- Gamma scalping: hedging gamma exposure profitably

### Vega
- Sensitivity to implied volatility changes
- Long vega: benefits from vol increase (long options)
- Short vega: benefits from vol decrease (short options)
- Vega across the term structure: front-month vs back-month

### Theta
- Time decay: options lose value as expiration approaches
- Theta as "rent" for owning optionality
- Theta-gamma tradeoff: can't have positive gamma without negative theta (generally)
- Theta acceleration: speeds up near expiration for ATM options

### Rho
- Sensitivity to interest rate changes
- Generally small for short-dated options, meaningful for long-dated
- More important for rate options

### Higher-Order Greeks
- Vanna: change in delta per change in vol (dDelta/dVol)
- Volga/Vomma: change in vega per change in vol (dVega/dVol)
- Charm: change in delta per change in time (dDelta/dT)

## 2. Value at Risk (VaR)
- Definition: maximum expected loss over time period at confidence level
- Historical VaR: use past returns distribution
- Parametric VaR: assume normal distribution, use mean and std dev
- Monte Carlo VaR: simulate thousands of scenarios
- Limitations: assumes normal markets, backward-looking, tail risk blind
- Conditional VaR (CVaR/Expected Shortfall): average loss beyond VaR — better for tails
- VaR as a risk limit: how trading desks use it

## 3. Hedging Strategies
- Delta hedging: neutralize directional exposure
- Duration hedging: match duration of assets and liabilities
- Cross-hedging: using a correlated but different instrument
- Basis risk: imperfect hedge, correlation breakdown
- Hedge ratios: minimum variance hedge ratio
- Cost of hedging: premium, carry, opportunity cost
- Dynamic vs static hedging
- Tail risk hedging: OTM puts, VIX calls, variance swaps

## 4. Position Sizing
- Kelly criterion: f* = edge / odds (optimize growth rate)
- Fractional Kelly: using half-Kelly for safety
- Risk budgeting: allocate risk across strategies
- Maximum drawdown limits
- Correlation-adjusted sizing: reduce size when positions are correlated
- Scaling in/out: building positions gradually

## 5. Drawdown & Risk Limits
- Maximum drawdown: peak-to-trough decline
- Drawdown duration: time to recover
- Stop-loss levels: per-trade, per-day, per-month
- Kill switch: automatic position flattening
- Risk limits hierarchy: trader → desk → firm
- P&L explains: attributing returns to risk factors

## 6. Stress Testing
- Historical stress tests: replay past crises (GFC, COVID, LTCM)
- Hypothetical stress tests: create scenarios (e.g., rates +200bps)
- Reverse stress testing: what scenario causes max loss?
- Sensitivity analysis: one-factor-at-a-time
- Correlation stress: assume correlations go to 1 in crisis

## 7. Risk Metrics Summary Table

| Metric | What It Measures | Limitations |
|--------|-----------------|-------------|
| VaR | Max loss at confidence level | Ignores tail risk |
| CVaR | Average loss beyond VaR | Still model-dependent |
| Sharpe Ratio | Risk-adjusted return | Assumes normal distribution |
| Sortino Ratio | Downside risk-adjusted return | Only penalizes downside |
| Max Drawdown | Worst peak-to-trough loss | Historical, may not predict future |
| Beta | Systematic risk | Unstable, backward-looking |
| Tracking Error | Deviation from benchmark | Doesn't distinguish good vs bad deviation |

## 8. Interview Focus Areas
- "How would you hedge this position?"
- "What are the Greeks and why do they matter?"
- "Explain VaR and its limitations"
- "How do you size a position?"
- "What happens to your portfolio in a 2008-style crisis?"
- "What's the difference between hedging and speculation?"
