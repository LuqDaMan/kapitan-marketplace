# Brain Teasers & Probability

## Overview
Quantitative brain teasers, probability puzzles, Fermi estimates, and mental math — tested in S&T, hedge fund, and trading interviews. Tests structured thinking and comfort with numbers.

## 1. Fermi Estimation

### Framework
1. Define what you're estimating
2. Break it into components you can estimate
3. Make reasonable assumptions (state them explicitly)
4. Calculate and sanity-check
5. Bound your answer (order of magnitude)

### Classic Fermi Questions
- "How many golf balls fit in a school bus?"
- "How many gas stations are in the US?"
- "What's the annual revenue of a single McDonald's location?"
- "How many piano tuners are in Chicago?"
- "What's the daily trading volume in the FX market?" (trick: you should know this — ~$7T)

### Market-Specific Fermi Questions
- "How much oil does the US consume per day?" (~20M barrels)
- "What's the size of the US Treasury market?" (~$25T+)
- "How many trades does the NYSE process per day?"
- "What's the notional value of the global derivatives market?"
- "How many tonnes of copper does China consume annually?"
- "What's the annual GDP of the US?" (~$28T)

## 2. Probability

### Core Concepts
- Basic probability: P(A), P(A and B), P(A or B), P(A|B)
- Bayes' theorem: P(A|B) = P(B|A)×P(A) / P(B)
- Independence: P(A and B) = P(A)×P(B) only if independent
- Conditional probability: the counterintuitive cases

### Classic Probability Questions
- **Coin flip sequences:** "Fair coin, what's P(heads, heads, tails)?" → 1/8
- **Birthday problem:** "How many people needed for 50% chance of shared birthday?" → 23
- **Monty Hall:** Three doors, you pick one, host opens another (goat), should you switch? → Yes (2/3)
- **Gambler's ruin:** "You have $100, bet $1 on fair coin flips until $200 or $0. What's P(reaching $200)?" → 50%
- **Dice problems:** "Expected rolls to see all 6 faces?" → 14.7 (coupon collector)
- **Card problems:** "P(drawing 2 aces from a 52-card deck without replacement?" → (4/52)×(3/51)

### Trading-Relevant Probability
- **Expected value:** "A trade has 60% chance of making $100 and 40% chance of losing $120. Do you take it?" → EV = 60×100 - 40×120 = $60 - $48 = $12. Yes.
- **Kelly criterion:** "Same trade — what fraction of your bankroll do you bet?" → f = (0.6×100 - 0.4×120) / (100×120) → apply Kelly formula
- **Conditional probability in markets:** "If a stock has gone up 3 days in a row, what's the probability it goes up tomorrow?" → Same as unconditional (if random walk) — test if they know this
- **Correlation and diversification:** "Two assets each have 20% vol with 0.5 correlation. What's the portfolio vol if equal weighted?" → σ_p = √(0.25×0.04 + 0.25×0.04 + 2×0.25×0.5×0.04) = √(0.01 + 0.01 + 0.01) = √0.03 ≈ 17.3%

## 3. Mental Math

### Techniques
- **Rule of 72:** Years to double = 72 / rate%. E.g., 8% → 9 years
- **Percentage shortcuts:** 15% of 240 = 10% (24) + 5% (12) = 36
- **Compound interest approximation:** For small rates, compound ≈ simple + (simple rate)²/2
- **Square roots:** √2 ≈ 1.41, √3 ≈ 1.73, √5 ≈ 2.24
- **Fractions to decimals:** 1/3 ≈ 0.333, 1/7 ≈ 0.143, 1/8 = 0.125

### Practice Problems
- "What's 17 × 23?" → (20-3)(20+3) = 400-9 = 391
- "What's 15% of $4.2 billion?" → $630 million
- "If a bond yields 4.5% and the price is 98, what's the current yield?" → 4.5/98 ≈ 4.59%
- "Stock at $50, up 20%, then down 15%. Final price?" → 50 × 1.2 × 0.85 = $51

## 4. Market Sizing
- Break the market into segments
- Estimate each segment: users × frequency × price
- Top-down vs bottom-up approaches
- Sanity check against known benchmarks
- Common market sizing: "Size the US mortgage market", "Size the global ETF market"

## 5. Logic Puzzles

### Classic Types
- **Weighing problems:** "8 balls, one is heavier. Balance scale, find it in 2 weighings."
- **Sequence puzzles:** "What comes next: 1, 1, 2, 3, 5, 8, ?"
- **Lateral thinking:** "A man pushes his car to a hotel and tells the owner he's bankrupt. Why?" → Monopoly
- **Strategy games:** "You and I take turns removing 1-3 stones from a pile of 15. Last to take wins. You go first — what's your strategy?"

### Trading-Specific Logic
- "I flip a fair coin. Heads I pay you $1, tails you pay me $1. But if we get 3 heads in a row, I pay you $10. What's your strategy?"
- "Two envelopes problem: one has X dollars, the other 2X. You open one and see $100. Do you switch?"
- "Russian roulette with 2 bullets in adjacent chambers of a 6-chamber revolver. After one empty chamber, do you spin again or pull?"

## 6. Interview Tips
- Think out loud — they want to see your process
- State assumptions explicitly
- Start with a simple case, then generalize
- Sanity check your answer
- Don't panic if the first number seems off — adjust
- For probability: draw a tree or use a table
- For Fermi: anchor to something you know
