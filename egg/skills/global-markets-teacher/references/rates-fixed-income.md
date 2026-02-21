# Rates & Fixed Income

## 1. Core Concepts

### Bond Pricing Fundamentals

**Price-Yield Relationship**

Bonds have an inverse relationship between price and yield. When yields rise, bond prices fall; when yields fall, bond prices rise. Intuitively: if a bond pays a fixed coupon, and market rates rise, that fixed coupon is now less attractive relative to new bonds, so buyers demand a lower price to compensate. The relationship is not linear — it is convex (prices fall less when yields rise than they rise when yields fall).

**Clean vs Dirty Price**

- **Dirty price (full price):** The actual cash price paid, including accrued interest since the last coupon payment. This is the economic price.
- **Clean price (quoted price):** Dirty price minus accrued interest. This is what you see on Bloomberg and in trade confirmations. Traders quote clean to avoid prices jumping on coupon dates.
- **Accrued interest:** Coupon × (days since last coupon / days in coupon period). On coupon payment date, accrued interest resets to zero.

**Discount Factors and Present Value Framework**

Every bond price is just the present value of its future cash flows:

```
Price = Σ [Couponₜ / (1 + y/n)^(n×t)] + [Face / (1 + y/n)^(n×T)]
```

where y = yield, n = coupon periods per year, T = maturity. The discount factor for time t is df(t) = 1 / (1 + y/n)^(n×t). In a more rigorous framework, you discount each cash flow at the appropriate spot rate for that maturity, not a single flat yield.

**Par, Premium, Discount Bonds**

- **Par bond:** Coupon = yield → Price = 100. The coupon exactly compensates investors for time.
- **Premium bond:** Coupon > yield → Price > 100. Investor overpays, but earns above-market coupons. As the bond approaches maturity, price "pulls to par."
- **Discount bond:** Coupon < yield → Price < 100. Investor underpays, but earns below-market coupons. Price also pulls to par.

**Day Count Conventions**

Day count affects how accrued interest and yield calculations are performed:

| Convention | Used For | How It Works |
|---|---|---|
| 30/360 | US corporate bonds, agency bonds | Assumes 30 days/month, 360-day year |
| ACT/360 | Money markets, most floating rate, repo | Actual days elapsed / 360 |
| ACT/ACT (ICMA) | US Treasuries, government bonds | Actual days / actual days in period |
| ACT/365 | UK gilts, some markets | Actual days / 365 |

This matters for yield calculations: a 5% yield on ACT/360 basis is slightly different from 5% on ACT/ACT.

---

### Yield Measures

**Coupon Yield**
The stated annual coupon divided by face value. A bond with $5 annual coupon on $100 face has a 5% coupon yield. This is fixed for plain vanilla bonds and ignores price.

**Current Yield**
Annual coupon / current market price. If you buy that same bond at $95, current yield = $5 / $95 = 5.26%. Still incomplete — ignores capital gain/loss at maturity.

**Yield to Maturity (YTM)**
The single discount rate that sets the present value of all cash flows equal to the bond's price. This is the most widely used yield measure. It assumes:
1. You hold to maturity
2. All coupons are reinvested at the same YTM rate (rarely realistic)
3. The issuer does not default

For a semi-annual coupon bond: find y such that Price = Σ [C/2 / (1+y/2)^t] + [100 / (1+y/2)^(2T)]

**Yield to Call (YTC)**
For callable bonds, YTM is calculated to the call date at the call price rather than maturity. If the bond is likely to be called (e.g., when rates fall significantly), YTC is more relevant than YTM.

**Yield to Worst (YTW)**
The minimum of YTM and all YTCs. This is the most conservative yield measure and what fixed income investors typically focus on for callable bonds. Used extensively in high yield analysis.

**Bond Equivalent Yield (BEY)**
Converts yields to a semi-annual, annualized basis for comparison. Money market instruments often quoted on discount basis; BEY adjusts for this. BEY = 2 × (semi-annual yield). Used to compare bonds with different coupon frequencies.

**Money Market Yield**
Also called CD yield or add-on rate. Calculated on a 360-day basis: MMY = (Face - Price) / Price × (360 / days). Different from the discount rate, which uses face value in the denominator.

**Real Yield vs Nominal Yield**
- **Nominal yield:** The stated yield without inflation adjustment.
- **Real yield:** Yield after adjusting for inflation. Roughly: Real yield ≈ Nominal yield - Expected inflation.
- **Fisher equation (exact):** (1 + nominal) = (1 + real)(1 + inflation)
- **Breakeven inflation:** The inflation rate at which an investor is indifferent between a nominal Treasury and a TIPS of the same maturity. Breakeven = Nominal Treasury yield - TIPS real yield. If realized inflation exceeds breakeven, TIPS outperforms; if below, nominal Treasuries outperform.

**TIPS and Inflation-Linked Bonds**
Treasury Inflation-Protected Securities (TIPS):
- Principal is adjusted daily based on CPI. Coupon is fixed, but applied to the inflation-adjusted principal.
- At maturity, investor receives the greater of the inflation-adjusted principal or original par (deflation floor).
- Real yield is the quoted yield. When real yields fall, TIPS prices rise.
- 10y TIPS real yield is a key market variable watched by equity traders (discount rate proxy for growth assets).
- Liquidity is lower than nominal Treasuries, so TIPS may trade with a liquidity premium baked in.

---

### The Yield Curve

**Term Structure of Interest Rates**
The yield curve plots yields of bonds of the same credit quality but different maturities. For US government securities, this is typically the Treasury curve. The shape of the yield curve encodes market expectations about future rates, inflation, and economic conditions.

**Theories of the Term Structure**

1. **Pure Expectations Hypothesis:** Long-term rates are geometric averages of expected future short-term rates. A 2y rate is the market's expectation of two successive 1y rates. No risk premium. Implication: an inverted curve means the market expects short rates to fall. Empirically fails because long rates have higher variance than the theory predicts.

2. **Liquidity Premium Theory (Preferred Habitat + Liquidity):** Investors require a premium to hold longer-duration bonds due to greater price volatility and less liquidity. Long rates = expected future short rates + liquidity premium. Explains why the curve is normally upward sloping even when future rates are expected to be flat.

3. **Market Segmentation Theory:** Different maturity segments are dominated by different investor types (banks at short end, pension funds at long end, insurance companies at ultra-long). Supply and demand in each segment are relatively independent. Extreme version — yields in different segments don't interact much.

4. **Preferred Habitat Theory:** Like segmentation but with some flexibility — investors will move out of their preferred maturity if the yield pickup is sufficient. More nuanced and empirically supported.

**Curve Shapes**

| Shape | Description | What It Often Signals |
|---|---|---|
| Normal (upward sloping) | Short yields < Long yields | Economic expansion expected, healthy risk environment |
| Flat | Short yields ≈ Long yields | Transition between growth and contraction, policy uncertainty |
| Inverted | Short yields > Long yields | Tight monetary policy, recession expected |
| Humped | Medium-term yields highest | Often seen at peak of tightening cycle |
| Steep | Very large gap between short and long | Accommodative policy (low short rates), inflation expectations rising |

The 2s10s spread (10y yield minus 2y yield) is the most watched curve metric. As of recent cycles, inversion of 2s10s has preceded every US recession since the 1970s, though with variable lead times.

**Key Rate Benchmarks**

- **Fed Funds Rate (FFR):** The rate banks charge each other for overnight reserves. Set by the FOMC. This is the primary monetary policy tool and anchors the short end of the curve.
- **SOFR (Secured Overnight Financing Rate):** Replaced LIBOR. Overnight rate based on actual repo transactions secured by Treasuries. Published by the NY Fed. More robust than LIBOR as it's transaction-based.
- **2-Year Treasury:** Highly sensitive to Fed expectations. Often moves closely with expected Fed path.
- **5-Year Treasury:** Medium-term growth and inflation expectations. Also anchors many mortgage/credit benchmarks.
- **10-Year Treasury:** The global benchmark. Used to price mortgages, corporate bonds, and as the risk-free rate in many valuation models. Reflects a blend of short-rate expectations, term premium, and inflation expectations.
- **30-Year Treasury:** Dominated by pension fund and insurance demand (liability matching), inflation expectations, and fiscal concerns. Less liquidity premium, more inflation premium.

**Curve Trades**

*Steepeners:* Bet that the spread between long and short rates widens. Expressed as long the long end, short the short end (or long 2y, short 10y in futures/swaps).

*Flatteners:* Bet that the spread narrows. Opposite positioning.

*Butterfly:* A three-legged trade on three tenors (e.g., 2y, 5y, 10y). A "positive butterfly" (fly-up) means the belly (5y) cheapens relative to the wings. Used to express views on the shape of the curve without directional rate exposure.

*Curvature trade example:* A 2s5s10s butterfly is long 2y and 10y, short 5y in DV01-neutral weights. Profits if 5y yields rise relative to the wings.

**Bull/Bear Steepeners and Flatteners**

This is a critical distinction in interviews:

| Scenario | What's Happening | Typical Cause |
|---|---|---|
| **Bull steepener** | Long rates fall more than short rates (curve steepens as rally happens) | Fed cutting rates in recession; flight to quality at long end |
| **Bear steepener** | Long rates rise more than short rates (curve steepens as selloff happens) | Inflation fears, term premium rise, fiscal concerns driving long end higher |
| **Bull flattener** | Short rates fall more than long rates (curve flattens as rally happens) | Fed cutting aggressively; recession trade |
| **Bear flattener** | Short rates rise more than long rates (curve flattens as selloff happens) | Fed hiking aggressively; most common form seen in tightening cycles |

Bear steepener is often the most dangerous for long-duration portfolios because it combines rising rates with steepening. Bear flatteners hurt short-end holders but benefit long-duration. Bull flatteners are often the best environment for long-duration fixed income.

---

### Duration & Convexity

**Macaulay Duration**

The weighted average time to receive cash flows, where weights are the PV of each cash flow as a fraction of total price:

```
MacD = Σ [t × (CFₜ / (1+y)^t)] / Price
```

Measured in years. For a zero-coupon bond, MacD = maturity. For a coupon bond, MacD < maturity. Intuitively: the earlier you receive cash flows, the lower the duration. A high-coupon bond has lower duration than a low-coupon bond of the same maturity.

**Modified Duration**

The percentage price change for a 1% (100bp) change in yield:

```
ModD = MacD / (1 + y/n)
```

where n = coupon periods per year.

```
ΔP/P ≈ -ModD × Δy
```

A bond with ModD = 7 will lose approximately 7% of its value for a 100bp rise in yield. This is an approximation — the actual change is slightly different due to convexity.

**Effective Duration**

Used for bonds with embedded options (callable bonds, MBS, puttable bonds). Because the cash flows change depending on interest rates, you cannot use a simple formula. Instead:

```
Eff Duration = (P₋ - P₊) / (2 × P₀ × Δy)
```

where P₋ is price when rates fall by Δy, P₊ is price when rates rise by Δy. This numerical approach captures how the option changes the bond's interest rate sensitivity.

**Dollar Duration (DV01 — Dollar Value of a Basis Point)**

The dollar change in price for a 1bp (0.01%) move in yield:

```
DV01 = ModD × Price × 0.0001
```

This is the primary risk metric used by traders, not modified duration. A portfolio with DV01 of $10,000 gains or loses $10,000 for each 1bp move in rates. Traders size positions and hedge in DV01 terms to make risk comparable across different bonds and instruments.

Example: A 10-year Treasury worth $10 million with ModD = 8.5:
DV01 = 8.5 × $10,000,000 × 0.0001 = $8,500

**Key Rate Duration (KRD)**

The sensitivity of a bond's price to changes in the yield at specific points on the curve (e.g., 2y, 5y, 10y, 30y), holding other points constant. The sum of all KRDs equals the effective duration. Useful for understanding curve risk — a mortgage bond might have high KRD at the 10y point but low at the 30y, even if its overall duration appears long.

**Convexity**

Duration is a first-order (linear) approximation. Convexity captures the curvature — the second derivative of price with respect to yield:

```
ΔP/P ≈ -D×Δy + ½×C×(Δy)²
```

For a standard fixed-rate bond, convexity is positive: prices rise more when yields fall than they fall when yields rise by the same amount. Convexity is beneficial — investors pay for it (positive convexity bonds trade at a premium, lower yield, all else equal).

**Why convexity matters:**
- For small yield moves, duration is sufficient.
- For large yield moves (100bp+), convexity becomes significant.
- A bond with higher convexity outperforms a lower-convexity bond with the same duration if yields move significantly in either direction.
- In volatile rate environments, convexity is valuable and traders actively seek or sell it.

**Negative Convexity**

Some bonds have negative convexity over certain yield ranges, meaning prices rise less than duration predicts when rates fall (due to embedded options):

- **Callable bonds:** When rates fall below the coupon, the issuer calls the bond, capping the price upside. Below the call price, the bond has negative convexity.
- **Mortgage-Backed Securities (MBS):** As rates fall, homeowners prepay mortgages (refinancing). The MBS investor receives their principal back early and must reinvest at lower rates. MBS therefore has negative convexity in rallies.
- **Hedging negative convexity:** Requires buying options (swaptions, caps) or dynamically rebalancing — costly. MBS servicers and bank mortgage portfolios spend enormous effort and cost hedging this risk.

---

### Repo & Funding

**Repurchase Agreement Mechanics**

A repo is a collateralized short-term loan. The mechanics:
1. Seller (borrower of cash) sells securities to buyer (lender of cash) at an agreed price.
2. Simultaneously agrees to repurchase the same securities at a slightly higher price on a specified date.
3. The difference between sale price and repurchase price is the repo interest.

From the cash borrower's perspective: it's a repo (they repo out securities). From the cash lender's perspective: it's a reverse repo (they receive securities as collateral).

**Key Terms**

- **Repo rate:** The annualized interest rate implied by the price difference. Varies by collateral quality and term.
- **Haircut (initial margin):** The discount applied to collateral value. If a bond is worth $100, the cash lender might only lend $98 (2% haircut), protecting against collateral price declines.
- **Term repo:** Fixed maturity (1 week, 1 month, 3 months). More predictable funding but less flexible.
- **Overnight repo:** Rolls daily. Most common. Sensitive to daily rate moves.
- **Open repo:** No fixed term; can be terminated by either party with notice.

**Special vs General Collateral**

- **General collateral (GC):** Most Treasury and agency securities. Repo rate close to the risk-free overnight rate. Cash lenders are indifferent to which specific security they receive.
- **Special collateral:** Specific securities that are in high demand (typically the on-the-run 10y or securities needed to cover short positions). Trade at lower repo rates than GC because borrowers pay a premium to get that specific bond. A bond "on special" has its repo rate below GC — sometimes significantly. This is valuable information for traders: a bond on special is in high demand, often from short sellers.

**Repo as a Funding Tool**

Dealers and hedge funds use repo to lever up bond positions. A trader with $10M of capital can:
1. Buy $100M of Treasuries
2. Repo out those Treasuries for $98M cash (2% haircut)
3. Use that cash to buy more bonds
4. Repeat until leverage limit or haircut prevents further expansion

The cost of carry for a leveraged bond position = bond yield - repo rate. If you can borrow at 5.25% repo to hold a 5.5% Treasury, your net carry is 25bp (before financing cost of your equity and other expenses).

**Repo as Monetary Policy Tool**

The Federal Reserve uses repo and reverse repo (RRP) to implement monetary policy:
- **Fed repo:** The Fed lends cash to primary dealers (buying their securities temporarily), injecting reserves into the banking system.
- **Fed reverse repo (RRP):** The Fed sells securities to counterparties temporarily, draining reserves. The RRP rate acts as a floor for money market rates — institutions would rather earn RRP than lend below it.
- The Fed's target for the fed funds rate is implemented by adjusting the rate it pays on reserves (IORB) and the RRP rate.

**Securities Lending**

Related to repo: holders of securities (mutual funds, pension funds, custodians) lend them out to short sellers in exchange for cash or other collateral plus a lending fee. Revenue from securities lending is an important income stream for passive funds and custodians.

---

### Interest Rate Swaps

**Plain Vanilla Interest Rate Swap**

In a standard fixed-for-floating IRS:
- One party pays a fixed rate (the "swap rate") on a notional amount
- The other pays a floating rate (now SOFR, formerly LIBOR)
- Only net cash flows are exchanged (no notional exchange for standard IRS)
- Typically semi-annual fixed payments, quarterly floating payments in USD

**Who pays fixed vs floating:**
- "Paying fixed" = receiving floating = swap receiver's counterparty = acts like being short a bond (you benefit from rising rates)
- "Receiving fixed" = paying floating = acts like being long a bond (you benefit from falling rates)

A corporate borrower that has issued floating rate debt (paying SOFR + spread) might pay fixed in a swap to convert to synthetic fixed-rate debt. They now have: floating debt + pay-fixed swap = fixed-rate obligation (minus/plus the swap spread vs their actual cost).

**Swap Rate Determination**

The par swap rate is the fixed rate that makes the NPV of the swap zero at inception. The fixed leg NPV must equal the floating leg NPV. The floating leg can be shown (using no-arbitrage) to equal par at each reset, so the swap rate is set such that the present value of the fixed coupon stream equals par minus the final discount factor:

```
Swap Rate = (1 - df(T)) / Σ df(tᵢ) × α(tᵢ)
```

where df(t) is the discount factor for time t and α(t) is the accrual fraction. The swap rate therefore encodes the market's expectation of average short rates over the swap's life.

**Swap Spread**

Swap spread = Swap rate - Treasury yield (same maturity)

The swap spread reflects several factors:
- **Credit risk:** Swaps involve counterparty risk (mitigated by collateral/CSAs, but not zero). LIBOR-era swap spreads embedded bank credit risk. Post-SOFR transition, swap spreads narrowed significantly.
- **Supply/demand:** Corporate hedging activity, MBS duration hedging, and foreign demand for Treasuries all affect spreads.
- **Balance sheet cost:** Dealers charge for balance sheet usage, affecting swap pricing.
- **Negative swap spreads:** In recent years, 30y swap spreads have been negative in the US — the 30y swap rate is below the 30y Treasury yield. This counterintuitive situation reflects excess Treasury supply, regulatory constraints on dealer balance sheets, and strong demand to receive fixed in swaps from pension funds.

**Basis Swaps**

A floating-for-floating swap where two different floating rates are exchanged. Examples:
- **SOFR vs EFFR basis swap:** Swapping SOFR for effective federal funds rate
- **Cross-currency basis swap:** Swapping floating in one currency for floating in another (e.g., USD SOFR vs EUR €STR). The spread on cross-currency basis reflects relative dollar funding demand.

**OIS (Overnight Index Swap)**

A swap where the floating rate is a daily compounded overnight rate (SOFR in USD, €STR in EUR, SONIA in GBP). OIS rates are the cleanest measure of market expectations for the central bank policy rate. Because OIS involves no credit risk (SOFR is secured, daily compounded), OIS discounting has become the standard for collateralized derivatives. The LIBOR-OIS spread (now SOFR-based) was a key stress indicator during the 2008 financial crisis.

**Using Swaps for Hedging and Speculation**

- **Hedging:** A bond portfolio manager receives fixed in a swap to reduce duration. A corporation with floating-rate debt pays fixed. A pension fund receives ultra-long fixed in 30y swaps to match liabilities.
- **Speculation:** A macro trader who thinks rates will fall receives fixed (goes long duration via swaps, which requires no upfront cash and off-balance sheet for many investors). A rates trader who thinks the curve will steepen enters a 2s10s swap spread trade.
- **Advantages over bonds:** No upfront cash outlay, off-balance sheet for some entities, easily customizable tenor and notional, easily unwindable.

---

### Money Markets

**Money Market Instruments**

- **Treasury Bills (T-Bills):** US government discount paper with maturities up to 52 weeks. Quoted on a bank discount basis. Zero credit risk, highest liquidity. Used by money market funds and as repo collateral.
- **Commercial Paper (CP):** Short-term unsecured debt issued by corporations and financial institutions. Maturities typically 1-270 days. Slightly higher yield than T-bills to compensate for credit and liquidity risk.
- **Certificates of Deposit (CDs):** Time deposits with banks. Negotiable CDs can be traded in secondary market. Issued by banks seeking short-term funding. Subject to bank credit risk.
- **Agency Discount Notes:** Short-term paper from GSEs (Fannie Mae, Freddie Mac, FHLB). Quasi-government credit quality, slightly higher yield than T-bills.

**Fed Funds Market**

Banks with excess reserves at the Fed lend them overnight to banks that are short reserves. The fed funds rate is the weighted average of these transactions. The FOMC sets a target range (e.g., 5.25%-5.50%). The NY Fed's open market operations (repo, reverse repo) keep the effective rate within the target band. IORB (Interest on Reserve Balances) is the floor; the RRP rate is effectively the floor for money markets more broadly.

**SOFR: Definition and Mechanics**

SOFR = Secured Overnight Financing Rate, published by the NY Fed based on:
- Treasury repo transactions (tri-party and bilateral)
- Approximately $1 trillion+ in daily volume
- Volume-weighted median of all transactions

SOFR replaced LIBOR (London Interbank Offered Rate) after the 2017-2023 transition. LIBOR was a survey-based rate — banks estimated their borrowing costs rather than reporting actual transactions. This made LIBOR susceptible to manipulation (Barclays, Deutsche Bank, UBS fines). SOFR is transaction-based, overnight, and secured (against Treasury collateral), making it robust.

Key variants:
- **SOFR:** Daily rate
- **SOFR Average (30/90/180 day):** Compounded averages for use in floating rate notes
- **Term SOFR:** Forward-looking 1m, 3m, 6m, 12m rates based on SOFR futures. Published by CME. Used in loans and some bonds where borrowers need to know their rate in advance.

**Money Market Funds (MMFs)**

MMFs are mutual funds that invest in short-term, high-quality instruments to maintain a $1 NAV (government MMFs) or floating NAV (prime MMFs). Over $5 trillion in AUM. Critical to short-term credit markets — they are major buyers of T-bills, agency paper, repo, and CP. In stress events (2008, 2020 COVID), MMF redemption pressure creates systemic risk, as seen in the Reserve Primary Fund "breaking the buck" in 2008.

---

### MBS & Agency Securities

**Agency vs Non-Agency MBS**

- **Agency MBS:** Issued or guaranteed by Fannie Mae (FNMA), Freddie Mac (FHLMC), or Ginnie Mae (GNMA). Ginnie Mae is fully government-backed; Fannie and Freddie are government-sponsored enterprises (GSEs) with implicit (now explicit post-2008 conservatorship) federal backing. Agency MBS carry no credit risk, only prepayment risk.
- **Non-Agency MBS:** Issued by private institutions without government guarantee. Subject to both credit risk and prepayment risk. Includes prime, alt-A, and subprime categories. The 2008 crisis was centered on mispriced non-agency MBS.

**Pass-Through Securities**

The simplest form of MBS. A pool of mortgages is assembled; homeowners' principal and interest payments (net of servicing and guaranty fees) are "passed through" to certificate holders pro-rata. Investors receive irregular cash flows because:
1. Scheduled principal amortization (mortgages amortize)
2. Scheduled interest
3. Prepayments (unscheduled principal from refinancings, home sales, defaults)

**CMOs (Collateralized Mortgage Obligations)**

CMOs slice MBS cash flows into tranches with different risk/return profiles:
- **Sequential pay tranches:** Short tranches receive principal first, long tranches last
- **PAC (Planned Amortization Class):** Designed to have stable cash flows within a prepayment range; companion tranches absorb prepayment variability
- **Z-tranche (accrual):** No cash flows until other tranches are paid off; accretes like a zero-coupon bond
- **IOs/POs:** Interest-only and principal-only strips. IO increases in value when prepayments slow (more interest paid); PO increases when prepayments accelerate (faster return of principal at a discount).

**Prepayment Risk**

The primary risk in agency MBS. Prepayment happens when:
- Homeowners refinance (most common when rates fall — "refinancing wave")
- Homeowners sell their homes
- Defaults (in non-agency)

**CPR (Conditional Prepayment Rate):** Annualized percentage of the remaining mortgage pool expected to prepay in a given month. A 20 CPR means 20% of the remaining pool will prepay in the next year.

**PSA (Public Securities Association) Model:** A benchmark prepayment ramp assuming 0.2% CPR per month ramping up over 30 months to 6% CPR, which then remains constant. "100 PSA" is the base; "200 PSA" means prepayments at twice the base rate.

**Negative Convexity of MBS**

MBS exhibit negative convexity because:
- When rates fall significantly, prepayments accelerate. This shortens the bond's duration just when you want duration (prices rise less than expected).
- When rates rise, prepayments slow (people don't refinance). Duration extends just when you don't want it (prices fall more than expected).

This duration extension in rising rate environments is called "extension risk." It makes MBS difficult to hedge — the hedge ratio keeps changing. Servicers and banks hold large mortgage portfolios and spend enormous resources on dynamic hedging.

**TBA (To Be Announced) Market**

The TBA market is a forward market for agency MBS. Buyers and sellers agree on the general terms (issuer, coupon, maturity, face amount) but the specific pools are not identified until two days before settlement. TBA is the most liquid segment of the MBS market — more liquid than specified pools. The TBA market enables:
- Originators to hedge pipelines before pooling
- Investors to express directional views on MBS
- Dollar rolls: selling TBA for near settlement and buying the same TBA for a later settlement month. The implied financing rate of this roll is called the "drop."

**OAS (Option-Adjusted Spread)**

The spread over the risk-free rate after adjusting for embedded options (prepayment options). Calculated using a model that simulates many interest rate paths and solves for the spread that equates the model price to the market price. OAS > nominal spread because part of the nominal spread compensates for the option cost. Comparing OAS across MBS and other securities provides an apples-to-apples measure of relative value.

---

## 2. Key Relationships & Formulas

**Bond Price**
```
Price = Σ [C / (1 + y/n)^(n×t)] + [FV / (1 + y/n)^(n×T)]
```
where C = coupon payment, y = yield, n = coupon periods/year, T = maturity.

**Modified Duration**
```
ModD = MacD / (1 + y/n)
ΔP/P ≈ -ModD × Δy
```

**DV01 (Dollar Value of a Basis Point)**
```
DV01 = ModD × Price × 0.0001
```
or numerically:
```
DV01 = (P(y - 1bp) - P(y + 1bp)) / 2
```

**Convexity and Price Approximation**
```
ΔP/P ≈ -D × Δy + ½ × C × (Δy)²
```
Full price change for a 50bp rate rise on a 10y bond (D=8, C=80):
```
ΔP/P ≈ -(8)(0.005) + ½(80)(0.005)² = -0.04 + 0.001 = -3.9%
vs. duration-only: -4.0%
```
Convexity saves you ~10bp, which becomes significant at larger moves.

**Forward Rates**
From spot rates s₁ (1-period) and s₂ (2-period), the 1-period forward rate starting in period 1:
```
(1 + s₂)² = (1 + s₁)(1 + f₁,₂)
f₁,₂ = (1 + s₂)² / (1 + s₁) - 1
```
More generally, the forward rate f(T₁, T₂) from time T₁ to T₂:
```
f(T₁,T₂) = [df(T₁) / df(T₂)] - 1 (for zero coupon)
```
Or continuously compounded:
```
f(T₁,T₂) = [s₂×T₂ - s₁×T₁] / (T₂ - T₁)
```

**Par Swap Rate**
The fixed rate S that makes the swap NPV zero:
```
S = (df(0) - df(T)) / Σ [df(tᵢ) × α(tᵢ)]
  = (1 - df(T)) / Σ [df(tᵢ) × α(tᵢ)]
```
where df(t) = discount factor, α(tᵢ) = day count fraction for period i.

**Breakeven Inflation**
```
BEI = Nominal Treasury Yield - TIPS Real Yield (same maturity)
```
If 10y Treasury = 4.50%, 10y TIPS = 2.00%, BEI = 2.50%.
Interpretation: Market expects ~2.5% annual CPI over the next 10 years.

**DV01-Neutral Hedge Ratio**
To hedge a long position in Bond A with Bond B:
```
Hedge Ratio = DV01(A) / DV01(B)
```
If DV01(A) = $8,000 and DV01(B) = $5,000, sell $8,000/$5,000 = 1.6 units of B per unit of A.

**Carry and Roll-Down**
Daily carry ≈ (Yield - Repo Rate) / 365
Roll-down: As time passes, a 10y bond becomes a 9.9y bond. If the curve is upward sloping, its yield falls (it "rolls down" the curve) and its price rises, generating additional return beyond carry.
Total return (short horizon) ≈ Carry + Roll-down + Price change due to yield moves

**Current Yield, YTM Relationship**
For a premium bond: Coupon yield > Current yield > YTM
For a discount bond: Coupon yield < Current yield < YTM
For a par bond: Coupon yield = Current yield = YTM

---

## 3. Trading Strategies

### Carry and Roll-Down

A key source of return in fixed income. A trader earns:
1. **Carry:** The yield pickup over funding cost (repo rate). A 10y Treasury yielding 4.5% funded at 5.0% overnight repo has negative carry (negative carry is common when the curve is inverted). A 10y at 4.5% funded at 3.0% repo has +150bp carry.
2. **Roll-down:** As the bond approaches maturity, it moves to a shorter point on the curve. If the curve is upward sloping, shorter-dated bonds have lower yields, so the bond's yield falls and price rises. A 5-year bond that rolls to a 4-year bond position is priced off the 4y point — if that's lower yield, the trader gains.

**Carry trades** involve taking on duration risk to earn carry. They perform well in stable or falling rate environments and poorly when rates move unexpectedly.

**Finding carry in flat or inverted curves:** When the curve is flat or inverted, standard duration carry is poor. Traders may seek carry in spread products (credit, MBS, EM), in different parts of the curve where there's more positive slope, or in cross-currency carry.

### Duration Trades

**Outright duration position:** Simply long or short duration (long bonds/swaps if you expect rates to fall; short if you expect rates to rise). The most straightforward rates trade.

**Expressing views via different instruments:**
- **Cash bonds:** Most straightforward, earns coupon
- **Interest rate futures (Treasury futures):** Highly liquid, exchange-traded, easy to short. 2y, 5y, 10y, 30y futures traded on CME.
- **Interest rate swaps:** Off-balance sheet, flexible tenor, no upfront cash
- **Options on swaps (swaptions):** Buy optionality on rates
- **Treasury options:** Options on Treasury futures

**Cheapest-to-deliver (CTD) in Treasury futures:** The futures contract settles via delivery of a basket of eligible Treasuries. The short has the option to deliver the cheapest-to-deliver bond. The CTD changes as yields move, creating a convexity-like feature that must be modeled (the "delivery option").

### Curve Trades

**2s10s Steepener/Flattener:**
- Steepener: Long 10y duration, short 2y duration (or long 10y futures, short 2y futures) in DV01-neutral weights. Profits if 10y yields rise relative to 2y, or 2y falls relative to 10y.
- Flattener: Opposite. Profits if 2y-10y spread narrows.
- DV01-neutral: The DV01 of the long position equals the DV01 of the short position. Neutral to parallel rate moves; profits only from curve shape changes.

**Butterfly (2s5s10s):**
A three-legged trade. Long the wings (2y and 10y), short the belly (5y), in DV01-neutral weights. Profits if the belly cheapens (5y yield rises relative to 2y and 10y). The trade is:
- Long 2y: notional N₁
- Short 5y: notional N₂
- Long 10y: notional N₃

Weights chosen so total DV01 = 0 and the DV01 of wings = DV01 of belly. The butterfly is a pure curvature trade.

**Common butterfly interpretation:**
- Positive butterfly (belly sells off): Fed expected to hike to fight inflation but then cut — curve hump at medium term
- Negative butterfly (belly rallies): Curve flattens uniformly; QE buying concentrated at medium term

### Spread Trades

**Swap Spread Trade:** Long (receive fixed in) swaps vs short Treasuries. Profits if swap spread widens. Or the reverse — pay fixed in swaps, own Treasuries — profits if spread narrows. Swap spreads reflect bank credit risk, supply/demand in each market, and balance sheet constraints.

**TED Spread:** 3-month LIBOR (or SOFR equivalent) minus 3-month T-bill yield. Reflects bank credit risk vs government credit risk. TED spiked to 460bp in October 2008.

**MBS Basis Trade:** Long MBS, short Treasuries (in DV01-neutral weights). The OAS/spread over Treasuries compensates for prepayment risk and convexity. When volatility is high, MBS bases widen (MBS cheapens relative to Treasuries) because the embedded prepayment option becomes more valuable to the borrower. Hedge funds and bank prop desks trade this basis.

**On-the-Run vs Off-the-Run Trade:** On-the-run (OTR) Treasuries are the most recently auctioned and most liquid. They trade at a premium (lower yield) to off-the-run (OFR) securities with similar maturities. The spread is the "liquidity premium." In stress events, OTR-OFR spreads widen dramatically (flight to liquidity). The classic trade: long OFR / short OTR, betting that the liquidity premium normalizes. This trade blew up Long-Term Capital Management in 1998 when the spread widened dramatically and positions couldn't be funded.

**Cross-Market Relative Value:** Long USTs vs short Bunds (expressing a view on US-Germany rate differentials), or long JGBs vs short USTs via cross-currency. Requires hedging FX exposure.

### Box Trades

A box trade uses futures to lock in an implied forward rate without directional exposure. Buy a near-dated futures contract and sell a far-dated contract (or the calendar spread between two futures). The implied repo rate of the box must be consistent with actual repo rates or an arbitrage exists. Sophisticated arbitrage desks look for mispricings between cash bonds, futures, and repo markets.

---

## 4. Risk Factors

**Interest Rate Risk (Duration Risk)**

The most fundamental risk. A bond portfolio's sensitivity to parallel shifts in the yield curve, measured by DV01 or modified duration. Quantified by:
```
P&L = -DV01 × Δy (in bps)
```
A portfolio with $500,000 DV01 loses $500,000 for every 1bp rise in rates across the curve.

**Curve Risk (Non-Parallel Shifts)**

Even if overall duration is hedged, the portfolio may be exposed to changes in curve shape. A liability-hedging portfolio might be DV01-matched but have duration concentrated at different points than the liabilities. Key rate durations (KRDs) capture this — report the sensitivity to each key rate point independently.

**Spread Risk**

The risk that the spread of a bond widens relative to the benchmark (usually Treasuries or swaps). For MBS, the spread over Treasuries can move even if Treasury yields are unchanged. For corporate bonds, the credit spread can widen in a risk-off environment. Spread DV01 measures spread risk per 1bp spread move.

**Prepayment Risk**

Specific to MBS and callable bonds. The risk that the assumed prepayment speed is wrong. If rates fall and prepayments surge beyond expectations, MBS investors receive principal back early and must reinvest at lower rates (reinvestment risk). Prepayment models (OAS models) are heavily scrutinized in the MBS market.

**Liquidity Risk**

In normal markets, Treasuries are among the most liquid instruments in the world. But in stress events:
- Bid-ask spreads widen dramatically
- Off-the-run bonds can trade far from model value
- Repo markets can seize (as in 2008) preventing funding of positions
- Even on-the-run Treasuries experienced liquidity problems in March 2020 (COVID shock), causing the Fed to intervene with massive QE

Liquidity risk is often underestimated in VaR models that assume normal market conditions.

**Inflation Risk**

Unexpected inflation erodes the real return of nominal bonds. For holders of long-duration fixed rate instruments, even a small unexpected rise in inflation expectations translates into significant principal loss. TIPS protect against this risk but have their own risks (real yield risk, liquidity risk, deflation in short-term).

**Model Risk (for Structured Products)**

MBS, CMOs, and other structured products are priced using prepayment models, interest rate models, and option models. Errors in model assumptions (prepayment speed, interest rate volatility, correlation) can lead to systematic mispricing. The 2008 crisis demonstrated catastrophic model risk in non-agency MBS.

**Reinvestment Risk**

When coupons are received, they must be reinvested at prevailing rates. If rates have fallen, realized return will be below YTM (which assumed reinvestment at the same rate). For long-horizon investors, reinvestment risk can be as significant as price risk. Zero-coupon bonds eliminate reinvestment risk.

---

## 5. Interview Focus Areas

### "Walk me through bond pricing from first principles"

Strong answer structure:

1. **Start with the concept:** A bond is a contract to pay specified cash flows at specified times. The fair price is what an investor should be willing to pay today for those future cash flows.

2. **The PV framework:** Money has time value — a dollar today is worth more than a dollar tomorrow. The discount rate captures this. For a risk-free bond, the discount rate reflects the risk-free interest rate and the time to that cash flow.

3. **The formula:** Sum up the PV of each coupon payment plus the PV of the principal repayment. For a 3-year annual coupon bond with 5% coupon and 5% yield:
   - Year 1: $5 / 1.05 = $4.76
   - Year 2: $5 / 1.05² = $4.54
   - Year 3: $105 / 1.05³ = $90.70
   - Total: $100.00 (par bond when coupon = yield)

4. **The inverse relationship:** If yields rise to 6%, the same formula gives you a price below par. Intuitively, the fixed coupons are now less attractive vs market rates.

5. **If they push for more:** Discuss clean vs dirty price, day count conventions, and the spot rate framework (different discount rates for different maturities).

### "Explain duration and convexity intuitively"

**Duration intuition:**
- Macaulay duration = the "center of mass" of the bond's cash flows in time. If all cash flows came tomorrow, duration = 1 day. If only the final payment mattered, duration ≈ maturity.
- Modified duration = the lever arm. A duration of 8 means an 8% price fall for a 100bp yield rise.
- Analogy: A long lever (high duration) amplifies small movements. A bond with 20-year duration swings wildly with rate changes; a 1-year T-bill barely moves.

**Convexity intuition:**
- Duration gives you a straight-line approximation of a curved relationship.
- Convexity captures the curvature — the fact that the price-yield relationship is a curve, not a line.
- Positive convexity is always good for the bondholder: you gain more than duration predicts when rates fall, and lose less than duration predicts when rates rise.
- Analogy: A curved road vs a straight road. Duration is driving straight ahead; convexity adjusts for the curve.

**Why investors pay for convexity:** All else equal, a bond with more convexity outperforms in volatile markets. Investors therefore accept a lower yield for high-convexity instruments.

### "What does an inverted yield curve tell you?"

Multiple correct answers here — show you understand the nuance:

1. **Expectations channel:** The market expects short-term rates to fall in the future, which happens when the economy slows and the Fed cuts. An inverted curve often signals a recession expectation.

2. **Historical track record:** The 2s10s curve has inverted before every US recession since the 1970s. But the lead time varies enormously (6 months to 2 years), and there have been false positives.

3. **Why inversion can hurt the economy:** When short rates > long rates, bank profitability suffers (banks borrow short, lend long). This can cause credit tightening, which slows growth and becomes a self-fulfilling dynamic.

4. **Counterarguments/nuances:**
   - The term premium could be very negative, making the curve artificially inverted even without strong recession expectations
   - International demand for long-dated Treasuries (foreign reserves, pension regulations) can suppress long yields
   - Fiscal concerns could push long yields higher than expectations alone would imply

5. **Current application:** Always be ready to discuss the current curve shape. As of early 2026, be prepared to discuss whether the curve has re-steepened from its deep inversion of 2023 and what that signals.

### "How do interest rate swaps work and why do companies use them?"

**Mechanics:** Explain the mechanics clearly (fixed for floating, no principal exchange, net settlement). Use the example of a semi-annual fixed vs quarterly SOFR swap.

**Why companies use them:**

1. **Converting floating to fixed:** A company borrowed $500M at SOFR + 150bp. It prefers fixed rate certainty for budgeting. It pays fixed at 4.5% in a swap, receives SOFR. Net: pays SOFR + 150bp (debt) - SOFR (swap) + 4.5% (swap fixed) = 4.5% + 150bp = 6.0% fixed. Done.

2. **Converting fixed to floating:** A company wants to lower borrowing costs if rates fall. It issued fixed-rate bonds but pays floating in a swap, receiving fixed from the swap counterparty. Now pays floating.

3. **Portfolio duration management:** An asset manager wants to reduce portfolio duration quickly without selling bonds (which might be costly or impossible). Paying fixed in a swap reduces duration.

4. **Liability hedging:** A pension fund has long-dated fixed liabilities. It receives fixed in long-dated swaps to match its liability duration without buying ultra-long bonds.

**Why swaps vs bonds:** No upfront cash, off-balance sheet for many, customizable tenor, easily reversible.

### "What's happening in rates markets right now?"

This question tests market awareness. For any interview, know:
- Current level of the fed funds rate and whether the Fed is hiking, cutting, or on hold
- The current shape of the yield curve (2s10s, 2s5s, 5s30s)
- Current 10y yield and recent trend
- Any major macro themes (inflation trajectory, growth outlook, fiscal dynamics)
- What the market is pricing for Fed cuts/hikes (SOFR futures implied path)
- Recent notable moves and why they happened

As of February 2026 preparation context: The Fed cut rates in late 2024/early 2025 from its 2023 peak, and the trajectory of further cuts versus hold depends on inflation's path. Monitor the 10y yield and curve shape relative to Fed expectations.

### "Explain the repo market and why it matters"

Use the short-term funding and leverage angle:
1. Dealers fund their bond inventories via repo. Without repo, they couldn't hold positions.
2. Hedge funds use repo to lever fixed income positions (buy bond, repo it out, buy more bonds).
3. The repo market provides price discovery for short-term rates and is one of the largest and most important markets globally ($4-5 trillion/day in the US).
4. Why it matters for systemic risk: When repo markets freeze (2008), leveraged players can't fund positions, forced selling ensues, and prices collapse. The Fed intervenes by acting as a repo counterparty.
5. The SOFR connection: SOFR is actually derived from this repo market, making the health of the repo market critical for the entire rates complex.

### Common Misconceptions to Avoid

- **"Duration means time to maturity":** Duration is a price sensitivity measure that correlates with but is distinct from maturity.
- **"Convexity is only for large moves":** For most plain-vanilla bond portfolios, yes, but for MBS and callable bonds, convexity affects daily pricing.
- **"Higher yield always means better return":** Not if yields rise further after you buy. Total return includes price changes.
- **"Inverted curve always means imminent recession":** Lead times vary widely; timing is unreliable.
- **"Swaps eliminate all interest rate risk":** Swaps replace rate risk with basis risk (SOFR vs the rate you actually pay), counterparty risk, and model risk.
- **"SOFR is the same as LIBOR":** SOFR is secured (no credit risk component), overnight, and backward-looking (unless using Term SOFR). LIBOR embedded bank credit risk and was forward-looking by definition.
- **"Negative swap spreads are impossible":** They exist (especially at the long end in the US) due to supply/demand and balance sheet dynamics, not an arbitrage.

---

## 6. Cross-Asset Connections

### Rates → Equities

**Discount Rate Effect:** The fundamental connection. The value of any asset is the PV of its future cash flows. As interest rates rise, the discount rate rises, and the PV of those cash flows falls. This is especially pronounced for long-duration assets:
- Growth stocks with cash flows far in the future are extremely sensitive to discount rate changes
- Value stocks with near-term cash flows are less sensitive
- The equity risk premium = Equity earnings yield - Risk-free rate. Rising risk-free rates compress ERP unless equity prices fall

**Practical implication:** When 10y real yields rose from -1% to +2% in 2022, long-duration tech stocks (high P/E, distant cash flows) were crushed. The Nasdaq fell ~33% as the discount rate repriced.

**Fed Put:** The expectation that the Fed will cut rates if equities fall sharply creates a correlation between rate expectations and equity market sentiment.

**What to watch:** 10y real yield (TIPS yield) is arguably the most important variable for equity valuations. Monitor its level and direction.

### Rates → FX

**Interest Rate Parity:** The fundamental link between rates and currencies. Covered interest rate parity (CIP) states:

```
F/S = (1 + rᵈ) / (1 + rᶠ)
```

where F = forward rate, S = spot rate, rᵈ = domestic rate, rᶠ = foreign rate. A currency with higher rates trades at a forward discount. Uncovered interest rate parity (UIP) suggests the high-rate currency will depreciate by the interest differential — empirically, UIP fails in the short run (carry trades work), but holds better long-term.

**Carry trade:** Borrow in low-rate currency (e.g., JPY), invest in high-rate currency (e.g., USD). Earns the rate differential. Risk: sudden reversal ("carry unwind") when risk aversion spikes and funding currencies appreciate sharply.

**Cross-currency basis swaps:** The deviation from CIP (the cross-currency basis) reflects the additional cost/benefit of borrowing in USD synthetically vs directly. A deeply negative USD basis means dollar funding is scarce — foreign banks are paying a premium to access USD liquidity.

**What to watch:** US-foreign rate differentials (2y differentials are most predictive for spot FX in the short term). Fed hawkishness → USD strengthens. Rate convergence → USD weakens.

### Rates → Credit

**Risk-Free Rate Component:** A corporate bond's yield = Risk-free rate + Credit spread. When risk-free rates rise, all else equal, corporate yields rise. Credit spreads are the incremental compensation for credit risk.

**Implications of higher rates for credit:**
- Higher debt service costs for leveraged borrowers (especially floating-rate leveraged loans)
- Refinancing risk: companies with near-term maturities face potentially much higher coupons
- Valuation pressure: higher discount rates reduce the PV of future cash flows, making it harder for leveraged companies to service debt

**Rates vs spreads dynamic:** In a "risk-off" environment, Treasuries rally (flight to safety) while credit spreads widen. The opposite of rates can benefit credit: lower Treasury yields can tighten spreads if they signal better economic conditions (sometimes), or they can coexist with wider spreads in recessions.

**OAS of credit:** Option-adjusted spread is what credit investors actually earn above the risk-free curve. It's the rates-independent measure of credit compensation.

### Rates → Commodities

**Storage/Financing Cost:** Commodity prices reflect the cost of carry, which includes financing costs. Higher rates increase the cost of holding inventories, putting downward pressure on spot prices relative to futures (reducing the basis). The convenience yield of holding physical commodities is reduced when financing rates are high.

**USD Relationship:** Most global commodities are priced in USD. Dollar strength (often associated with higher US rates relative to the world) tends to be bearish for commodity prices — commodities become more expensive for foreign buyers, reducing demand. When the Fed hikes and USD strengthens, commodity exporters (Australia, Brazil, Canada) often see their currencies weaken along with commodity prices.

**Real rates and gold:** Gold has a strong inverse relationship with real yields (10y TIPS yield). When real rates are low or negative, the opportunity cost of holding non-yielding gold is low, and gold is attractive as a store of value. When real yields rise sharply (as in 2022), gold underperforms despite high nominal inflation.

**Oil and Fed policy:** High oil prices → higher inflation → Fed hawkishness → higher rates → potential demand destruction → lower oil prices. This feedback loop connects energy markets to monetary policy.

### Rates → Macro

**Fed Policy Transmission:** Interest rates are the primary lever of monetary policy. Higher rates:
1. Increase cost of borrowing (mortgages, auto loans, business loans) → reduce spending
2. Strengthen the currency → reduce export competitiveness
3. Reduce asset prices → negative wealth effect
4. Tighten financial conditions broadly → reduce risk-taking

**Neutral Rate (r*):** The theoretical rate at which monetary policy is neither stimulative nor restrictive, consistent with full employment and 2% inflation. The Fed's estimate of r* guides how much they must hike. If r* is 2.5% and the FFR is 5.5%, policy is significantly restrictive. Disagreements about r* drive major debates about how long the Fed stays "higher for longer."

**Inflation Expectations Anchoring:** If the market believes the Fed will keep inflation at 2%, long-term breakevens stay anchored even if short-term inflation spikes. If credibility erodes, breakevens rise, requiring even more Fed tightening. Watching inflation breakeven curves (5y5y forward breakeven) gauges whether inflation expectations are de-anchoring.

**Fiscal-Monetary Interaction:** Large fiscal deficits increase Treasury supply, which can push up long-term yields (term premium). If the Fed is simultaneously doing QT (selling bonds), the supply pressure compounds. This "fiscal dominance" risk — where the government's borrowing needs constrain monetary policy — is an emerging theme when debt/GDP is high.

**Leading indicators in rates:** The yield curve itself is a leading economic indicator (inverted = recession signal). Rate markets also price in employment and GDP outcomes via the implied path of Fed policy from SOFR futures. The market's "terminal rate" expectation (how high will the Fed go, or how low will it cut) is a key macro variable watched across all asset classes.
