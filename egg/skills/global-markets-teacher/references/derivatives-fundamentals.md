# Derivatives Fundamentals

## Overview
Options, futures, swaps — pricing, mechanics, strategies. This is tested heavily in S&T and hedge fund interviews.

## 1. Futures

### Mechanics
- Standardized contracts: underlying, size, delivery, expiry
- Margin system: initial, maintenance, variation
- Mark-to-market: daily settlement
- Convergence: futures price → spot at expiry
- Cash-settled vs physically delivered
- Contango and backwardation (see commodities.md for depth)

### Pricing
- Cost of carry model: F = S × e^(r-q)T (r=risk-free, q=dividend/convenience yield)
- Basis = Spot - Futures
- Calendar spreads: trading the roll
- Fair value: theoretical vs actual futures price

### Key Futures Markets
- Equity index: S&P 500 (ES), NASDAQ (NQ), Euro Stoxx 50
- Rates: Eurodollar (historical), SOFR futures, Treasury futures (2y, 5y, 10y, 30y, Ultra)
- FX: CME currency futures
- Commodities: WTI, Brent, gold, copper, corn, etc.

## 2. Options

### Option Basics
- Calls and puts: right to buy/sell at strike price
- American vs European exercise
- Intrinsic value vs time value
- Moneyness: ITM, ATM, OTM
- Option premium decomposition

### Black-Scholes Model
- Assumptions: log-normal returns, constant vol, no dividends (basic), continuous hedging
- Formula intuition: option = delta × stock - present value of exercise
- Key inputs: spot, strike, time, risk-free rate, volatility, dividends
- Limitations: constant vol assumption, no jumps, no transaction costs

### Put-Call Parity
- C - P = S - K×e^(-rT) (European options)
- No-arbitrage derivation: synthetic forward = call - put
- Violations imply arbitrage (or dividends, or American exercise)
- How to use: if you know one, derive the other

### Volatility
- Historical (realized) vol: std dev of past returns
- Implied vol: vol that sets BSM price equal to market price
- Vol surface: smile, skew, term structure
- Skew: OTM puts trade at higher IV than OTM calls (equity) — crash protection demand
- VIX: 30-day implied vol of S&P 500, "fear gauge"
- Vol of vol: how much implied vol itself varies
- Realized vs implied: vol risk premium

### Option Strategies
- Directional: long call, long put, bull/bear spreads
- Volatility: straddle (long ATM call + put), strangle (long OTM call + put)
- Income: covered call, cash-secured put, iron condor
- Hedging: protective put, collar
- Spread strategies: vertical, horizontal (calendar), diagonal
- Butterflies: profit from low movement around strike
- Risk reversals: long call + short put (or vice versa) — directional + vol view

## 3. Swaps

### Interest Rate Swaps (IRS)
- Plain vanilla: exchange fixed for floating (SOFR)
- Notional principal: never exchanged
- Par swap rate: fixed rate that sets NPV = 0
- Uses: hedging interest rate exposure, speculating on rates, asset-liability management
- Swap spread = swap rate - treasury yield

### Other Swaps
- Basis swap: floating vs floating (different indices)
- Cross-currency swap: exchange principal + interest in different currencies
- Total return swap: total return of asset vs financing rate
- Variance swap: trade realized variance vs fixed strike
- Credit default swap (see credit.md)
- Commodity swap: floating commodity price vs fixed price

### Swap Pricing
- PV of fixed leg = PV of floating leg (at inception)
- Discount factors from the swap curve
- Mark-to-market: PV of remaining fixed - PV of remaining floating

## 4. Exotic Options (awareness level)
- Barriers: knock-in, knock-out
- Digital/binary: fixed payout
- Asian: average price
- Lookback: optimal strike
- Compound: option on an option
- Quanto: cross-currency with FX fixed

## 5. Key Relationships
- Put-call parity: C - P = S - PV(K)
- Futures pricing: F = S × e^((r-q)T)
- BSM: C = S×N(d1) - K×e^(-rT)×N(d2)
- d1 = [ln(S/K) + (r + σ²/2)T] / (σ√T)
- d2 = d1 - σ√T
- Delta of call ≈ N(d1), Delta of put ≈ N(d1) - 1
- Gamma = N'(d1) / (S×σ√T)

## 6. Interview Focus Areas
- "Explain put-call parity from first principles"
- "How would you hedge a long stock position using options?"
- "What's the difference between historical and implied volatility?"
- "Walk me through how a swap works"
- "Why is the volatility surface not flat?"
- "How do you delta hedge an options portfolio?"
- "If vol goes up, what happens to the price of a call option? What about a put?"
- "Explain gamma risk"
