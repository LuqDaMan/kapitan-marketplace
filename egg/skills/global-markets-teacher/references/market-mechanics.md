# Market Mechanics

## Overview
How markets actually work — order types, microstructure, liquidity, settlement, clearing, and margin. Essential for S&T interviews where they expect you to understand the plumbing.

## 1. Order Types
- Market order: execute immediately at best available price. Risk: slippage
- Limit order: execute at specified price or better. Risk: no fill
- Stop order (stop-loss): becomes market order when price hits trigger
- Stop-limit: becomes limit order when trigger hit
- Iceberg/reserve: only shows part of the order
- TWAP: time-weighted average price — execute evenly over time period
- VWAP: volume-weighted average price — execute proportional to volume
- Fill-or-kill (FOK), immediate-or-cancel (IOC), good-til-cancelled (GTC)
- Pegged orders: tied to mid, bid, or ask

## 2. Market Microstructure
- Price discovery: how markets find the "right" price
- Order book: bid stack, ask stack, depth, best bid/offer (BBO)
- Market makers: providing liquidity, earning bid-ask spread, managing inventory
- Designated market makers (DMMs) vs electronic market makers
- Dark pools: anonymous trading, no pre-trade transparency
- Lit vs dark: when to use each
- Fragmentation: multiple venues, SIP (consolidated tape)
- High-frequency trading (HFT): latency arbitrage, market making
- Auction mechanisms: opening auction, closing auction, halt auctions
- Price impact: how large orders move the market

## 3. Liquidity
- Bid-ask spread as a liquidity measure
- Market depth: volume at each price level
- Resiliency: how quickly the book recovers after a large trade
- Liquidity providers vs liquidity takers
- Liquidity risk: inability to exit at fair value
- Liquidity premium: compensation for holding illiquid assets
- Liquidity crisis dynamics: feedback loops, fire sales
- On-the-run vs off-the-run liquidity (treasuries)

## 4. Settlement & Clearing
- Trade lifecycle: execution → clearing → settlement
- T+1 settlement (equities in US), T+2 (many international markets)
- Central counterparty (CCP): novation, risk mutualization
- Bilateral vs centrally cleared
- Delivery vs payment (DvP)
- Netting: bilateral and multilateral
- Failed trades: causes and consequences
- Custodians and depositories (DTCC, Euroclear, Clearstream)

## 5. Margin
- Initial margin: deposit to open a position
- Maintenance margin: minimum to keep position open
- Variation margin: daily mark-to-market settlement
- Margin call: when account falls below maintenance
- Portfolio margin: risk-based, cross-margining
- Haircuts: discount on collateral value
- Margin in different markets: futures (exchange), OTC derivatives (bilateral/cleared), repo, prime brokerage

## 6. Market Structure by Asset Class
- Equities: exchanges (NYSE, NASDAQ), dark pools, ATS
- Fixed income: OTC, dealer-to-dealer (IDB), dealer-to-client (RFQ), electronic platforms (Tradeweb, MarketAxess)
- FX: OTC, interbank (EBS, Reuters), single-dealer platforms, ECNs
- Commodities: exchanges (CME, ICE, LME), OTC physical
- Derivatives: exchange-traded (standardized) vs OTC (customized), central clearing mandate post-GFC
- Crypto: CEX (Binance, Coinbase), DEX (Uniswap), OTC

## 7. Regulation
- SEC (equities), CFTC (futures/commodities), FCA (UK), ESMA (EU)
- Reg NMS: national best bid/offer, order protection rule
- MiFID II: best execution, transparency, research unbundling
- Dodd-Frank: OTC derivatives reform, central clearing, reporting
- Volcker Rule: proprietary trading restrictions for banks
- Basel III/IV: capital requirements, leverage ratio, liquidity requirements (LCR, NSFR)

## 8. Interview Focus Areas
- "Explain the difference between a limit order and a market order"
- "How does a market maker make money?"
- "What is liquidity and how do you measure it?"
- "Walk me through what happens when you execute a trade"
- "What is central clearing and why does it matter?"
- "What causes a liquidity crisis?"
