# Crypto Trading & Market Making Firm Profile

## Representative Firms
Galaxy Digital, Cumberland (DRW), Amber Group, QCP Capital, Caladan, Kronos Research, Wintermute, Jump Crypto, GSR, B2C2, Flow Traders (crypto desk), Alameda-era successors

## Business Model
- **Market making:** Providing liquidity across CEXs, DEXs, and OTC — earning bid-ask spread 24/7/365
- **OTC desk:** Large block trades for institutions, miners, treasuries, and funds — relationship-driven
- **Proprietary trading:** Directional, basis, funding rate arb, cross-exchange arb, MEV strategies
- **Venture/investments:** Many firms (Galaxy, Amber) also invest in crypto projects and infrastructure
- **DeFi strategies:** Liquidity provision, yield farming, protocol arbitrage
- **Revenue sources:** Spread capture, basis trades, funding rate arb, venture returns, token holdings
- **24/7 operations:** No market close — requires global team coverage and automated risk systems

## What Makes Crypto Trading Firms Different
- **No close:** Markets never stop — risk management, monitoring, and execution are continuous
- **Fragmented liquidity:** Dozens of exchanges, each with different order books, fees, and latency
- **On-chain transparency:** Transactions are publicly visible — smart money tracking, whale watching
- **Counterparty risk is existential:** Post-FTX, firms deeply evaluate exchange solvency (proof of reserves, custodian selection)
- **Regulatory gray zone:** Firms must navigate unclear/evolving regulation across jurisdictions
- **Tech-heavy:** Infrastructure (low-latency connectors, smart contract interaction, MEV protection) is a core competitive advantage

## What They Test In Interviews
- Deep understanding of crypto market microstructure (CEX vs DEX, order book vs AMM)
- Market making fundamentals: inventory risk, adverse selection, spread setting
- DeFi mechanics: AMM math, lending protocols, liquidation cascades, oracle risk
- Basis and funding rate dynamics (perp vs spot)
- MEV awareness: front-running, sandwich attacks, backrunning, Flashbots/MEV-Share
- On-chain analysis: reading blockchain data, wallet tracking, mempool dynamics
- Risk management in 24/7 markets: automated kill switches, exchange counterparty limits
- Probability, expected value, and quantitative reasoning
- Coding/scripting ability (Python, Solidity awareness) — more technical than TradFi interviews
- Views on crypto market structure evolution, regulation, institutional adoption

## Interview Emphasis by Section (M1-M5)
- **M1 (Resume): 10%** — crypto experience, technical background, what you've traded/built, 24/7 mindset
- **M2 (Market Views): 25%** — must have sharp views on BTC/ETH, DeFi trends, regulatory developments. "What's your view on [token/protocol]?" is common. Expect to discuss on-chain metrics
- **M3 (Trade Pitch): 30%** — crypto-specific trades: basis, funding rate arb, cross-exchange arb, DeFi yield, relative value (ETH/BTC, L1 vs L2 tokens). Must quantify: entry, exit, sizing, carry
- **M4 (Scenario): 20%** — "A major exchange halts withdrawals. Walk me through the cascade." "ETH merge-style event — what happens to basis, funding, vol?" Expect DeFi-specific scenarios too
- **M5 (Brain Teaser): 15%** — probability, expected value, mental math. Often more technical/quant-flavored than bank interviews. May include coding questions or system design

## Culture & Values
- Tech-first: engineering and quant culture, not suit-and-tie
- Flat hierarchy, startup energy — even at larger firms like Galaxy
- Speed of execution: ship fast, iterate, automate everything
- Risk awareness post-FTX: counterparty risk management is taken very seriously
- Global and remote-friendly (Singapore, London, NYC, Zug hubs)
- Crypto-native: expected to use the products (have a wallet, interact with DeFi, run a node)
- Intellectual curiosity about decentralization, tokenomics, mechanism design

## What Makes a Candidate Stand Out
- Hands-on DeFi experience (have actually LP'd, used lending protocols, bridged cross-chain)
- Understanding of MEV and its implications for market structure
- Quantitative market making knowledge (inventory models, Avellaneda-Stoikov, optimal quoting)
- Ability to read and reason about smart contracts (Solidity literacy)
- On-chain analysis skills: Dune dashboards, Nansen, Arkham, Etherscan
- Views on crypto market structure evolution (institutional adoption, regulation, TradFi convergence)
- Post-FTX risk management awareness: proof of reserves, custodian diversification, exchange risk limits
- Cross-domain: TradFi market making experience applied to crypto (Cumberland/DRW model)

## Common Mistakes
- Treating crypto like just another asset class — it has fundamentally different market structure
- No on-chain awareness: if you can't discuss mempool, gas optimization, or block builders, you look like a tourist
- Ignoring counterparty risk: post-FTX this is non-negotiable
- Not having a wallet or DeFi experience — they expect you to be a user, not just a student
- Pitching a trade without understanding the execution mechanics (CEX vs DEX routing, slippage, gas costs)
- Being too focused on price prediction vs market structure and relative value
- Not understanding funding rate mechanics or the basis trade
- Dismissing regulatory risk or being naive about jurisdiction shopping

## Key Topics to Master
- **Perp funding rate:** Positive = longs pay shorts, negative = shorts pay longs. Basis = futures - spot. Cash-and-carry = long spot + short perp
- **AMM mechanics:** Constant product (x*y=k), concentrated liquidity (Uniswap v3), impermanent loss math
- **Liquidation cascades:** How DeFi lending (Aave, Compound) and perp exchanges cascade during vol spikes
- **Stablecoin mechanics:** Algorithmic vs fiat-backed vs crypto-backed, depeg risk transmission
- **MEV supply chain:** Searchers → builders → proposers → validators. Flashbots, MEV-Share, PBS
- **Cross-exchange arb:** Latency differences, withdrawal delays, gas cost vs profit calculation
- **Oracle risk:** Price feed manipulation, TWAP vs spot oracles, flash loan attacks
- **Tokenomics:** Vesting schedules, unlock events, inflation rates, token utility vs governance
