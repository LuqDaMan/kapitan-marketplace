# Commodities

## 1. Core Concepts

### Physical vs Paper Trading

Physical trading involves the actual ownership, movement, and delivery of a commodity. A physical trader must understand logistics, storage, quality specifications, counterparty relationships, and the regulatory environment at each location. The value chain is: sourcing (mine, well, farm, refinery) → transportation (pipeline, vessel, truck) → storage (tank farm, silo, warehouse) → blending/processing → delivery to end user.

Paper trading involves financial instruments — futures, swaps, options — that are cash-settled or settled by delivery of a standard contract quantity. Most paper positions are closed before expiry; actual delivery is the exception.

The critical link: convergence. At expiry, the futures price must converge to the spot price (or the specific delivery location price) because arbitrage enforces it. If they diverge, a physical player can deliver (or take delivery) to lock in a riskless profit. Basis risk arises when the commodity you hold physically does not perfectly match the futures contract specification — different grade, different location, different timing.

How trading houses make money:
- Locational arbitrage: buy cheap where supply is abundant, sell where it is scarce
- Temporal arbitrage: buy when contango exceeds storage costs, sell forward
- Quality arbitrage: buy off-spec or discounted grades, blend to meet delivery specs
- Informational edge: proprietary knowledge of supply chains, logistics, terminal capacity
- Optionality: owning physical infrastructure creates real options (ship can reroute, storage can be filled or emptied)

### Futures Markets

A futures contract specifies: commodity, quantity, quality/grade, delivery location, delivery month, and price. Exchange-traded contracts (NYMEX WTI, ICE Brent, LME Copper) are standardized and cleared centrally. OTC forwards and swaps are bilateral, more flexible but carry counterparty risk.

Margin mechanics:
- Initial margin: deposit required to open a position (set by exchange, based on volatility)
- Maintenance margin: minimum balance required; if account falls below, a margin call is issued
- Variation margin: daily cash flows from mark-to-market settlement — losses are debited, gains credited each day
- Mark-to-market eliminates the accumulation of large unrealized losses

The futures curve (term structure):
- Contango: futures price > spot price. Occurs when storage costs + financing costs > convenience yield. Incentivizes storage.
- Backwardation: spot price > futures price. Occurs when convenience yield > storage costs + financing. Signals tight near-term supply.
- Super-backwardation: extreme near-term shortage; front month massively above deferred months.
- The shape of the curve reflects the market's aggregate view of supply/demand balance through time.

Roll yield:
- In backwardation: a long futures position earns positive roll yield as the near contract rolls to a cheaper deferred contract.
- In contango: a long futures position suffers negative roll yield — you sell the near at a discount to buy the deferred.
- This is why passive commodity index investors systematically underperform spot returns during prolonged contango (e.g., natural gas 2008-2020, crude oil during COVID storage crisis).

### Storage and Convenience Yield

Cost of carry model (continuous compounding):

    F = S × e^((r + u - y) × T)

Where:
- S = current spot price
- r = risk-free rate (financing cost)
- u = storage cost (as % per annum)
- y = convenience yield (as % per annum)
- T = time to expiry (in years)

Intuition: to store a commodity, you pay financing (r) and storage (u), but receive the benefit of holding the physical (y). If r + u > y, futures trade above spot (contango). If y > r + u, futures trade below spot (backwardation).

Convenience yield is not directly observable — it is implied from the futures curve. It represents:
- Supply security: certainty of having inventory when you need it
- Production flexibility: a refinery needs crude on hand to keep running; a blackout has enormous cost
- Optionality: ability to respond to unexpected demand spikes
- Shortage premium: in a tight market, holders of physical can charge a premium

Storage economics in practice:
- Crude oil: Cushing, Oklahoma tank farms (WTI pricing point); Rotterdam/ARA for Brent/European crude
- Natural gas: underground storage (depleted reservoirs, salt caverns), LNG storage tanks
- Metals: LME-certified warehouses globally; warehouse premium/discount is tradeable
- Grains: silos, elevators; harvest seasonality drives annual storage cycle
- Floating storage: tankers used as storage when land tank capacity is full and contango is steep enough to cover vessel day rates + insurance + financing (happened in 2020 COVID demand collapse)

Contango trade mechanics (storage arbitrage):
1. Buy spot commodity (borrow at rate r)
2. Pay to store for T months
3. Sell forward at futures price F
4. At expiry, deliver into futures contract, repay loan
5. Profit = F - S - storage costs - financing costs
6. Arbitrage closes when F = S × e^((r+u)×T) — convenience yield is zero (full carry)

---

## 2. Energy Markets

### Crude Oil

Benchmarks:
- WTI (West Texas Intermediate): light sweet crude (API ~39°, sulfur ~0.24%), delivery at Cushing, Oklahoma. NYMEX futures. US domestic benchmark.
- Brent: blend of North Sea crudes (Forties, Oseberg, Ekofisk, Troll, Midway Sunset), delivery North Sea or cash-settled. ICE futures. Global benchmark — ~80% of world oil priced off Brent.
- Dubai/Oman: sour crude benchmark (API ~31°, sulfur ~2%), used for Middle East exports to Asia.
- ESPO (Eastern Siberia–Pacific Ocean): Russian crude benchmark for Asia.

Key spreads:
- Brent-WTI spread: reflects export capacity from Cushing, domestic US supply/demand, differentials between delivery specs. Historically WTI > Brent; US shale boom inverted this 2011–2019.
- Brent-Dubai (EFS): reflects light-heavy spread and east-west arbitrage for Middle East barrels.
- Light-heavy differentials: heavy sour crude trades at discount to light sweet because it costs more to refine (cokers, hydrotreaters needed).
- Sweet-sour spread: reflects sulfur removal cost in refining.

What drives the oil price:
- Supply: OPEC+ production quotas, US shale rig count/DUC wells, geopolitical supply disruptions
- Demand: global GDP growth, transportation demand, China industrial activity, seasonal heating/cooling
- Inventories: EIA weekly petroleum status report (US), IEA, OPEC monthly reports; Cushing stocks drive WTI specifically
- Financial flows: speculative positioning (CFTC COT report), USD strength (inverse relationship)
- Geopolitics: Middle East conflict premium, Russian sanctions, Venezuelan/Iranian sanctions
- Energy transition: long-term demand destruction risk from EVs, but near-term structural underinvestment

OPEC+ mechanics:
- OPEC+ (OPEC + Russia + allies) controls ~40% of world production
- Quotas allocated by country; cheating is endemic; monitored via secondary sources
- Cuts are often announced but partially honored; production data lags
- Saudi Arabia as swing producer: can ramp 2mb/d relatively quickly

### Refining and Crack Spreads

Crack spread = refined product price - crude oil price

The refiner's margin: buy crude, sell gasoline and diesel (and other products).

Common crack spreads:
- 3-2-1 crack: (2 × gasoline + 1 × distillate - 3 × crude) / 3. Approximates a simple refinery's margin per barrel of crude.
- 5-3-2 crack: (3 × gasoline + 2 × distillate - 5 × crude) / 5
- Gasoline crack (RBOB - WTI): reflects gasoline demand; peaks in US driving season (May-August)
- Distillate crack (heating oil/ULSD - WTI): reflects diesel/heating oil demand; peaks winter

Factors driving crack spreads:
- Seasonal: gasoline demand peaks summer (driving), distillate peaks winter (heating)
- Refinery outages: planned/unplanned maintenance reduces product supply → cracks widen
- Crude diet: cheaper heavy sour crude improves margins if refinery can process it
- IMO 2020: sulfur cap on marine fuels compressed high-sulfur fuel oil, widened VLSFO/gasoil cracks
- Russia-Ukraine: loss of Russian diesel to Europe in 2022 drove European gasoil cracks to record highs

### Natural Gas

Regional markets:
- Henry Hub (US): NYMEX futures benchmark. US market is largely isolated due to limited LNG export capacity historically; now growing with Sabine Pass, Corpus Christi, etc.
- TTF (Title Transfer Facility, Netherlands): European gas hub. Became the global benchmark during 2021-2022 energy crisis.
- JKM (Japan Korea Marker): Asian LNG spot price, assessed by Platts.
- NBP (National Balancing Point, UK): British gas benchmark.

Key spreads:
- JKM-TTF: east-west LNG arbitrage. If JKM >> TTF, LNG cargoes divert to Asia.
- TTF-Henry Hub: trans-Atlantic arbitrage, limited by LNG liquefaction/regasification capacity.

Drivers:
- Weather: temperature drives heating demand (winter) and cooling demand (summer for power gen)
- Storage levels: EIA weekly storage reports; storage vs 5-year average is critical
- LNG exports: competing demand from export terminals
- Renewable generation: wind/solar backup demand for gas power plants
- Nuclear outages: France nuclear fleet availability drives European gas demand
- Geopolitics: Nordstream sabotage, Russian supply curtailment to Europe was the defining energy story 2021-2023

Seasonality:
- US: injection season (April-October) fills storage; withdrawal season (November-March) draws it down
- European winter: sharp demand spike; a cold winter can drain storage rapidly
- Henry Hub summer: gas-for-power demand rises with AC load

Storage dynamics:
- Underground storage: seasonal buffer between steady production and lumpy demand
- Storage injections drive contango in summer; withdrawals support backwardation in winter
- If storage is full (as in late 2023 US), spot gas has no bid → prices collapse
- If storage is low heading into winter, extreme backwardation and price spikes

### LNG (Liquefied Natural Gas)

Value chain:
1. Upstream gas production
2. Liquefaction plant (cools gas to -162°C, reduces volume 600x) — capital-intensive, project finance
3. LNG tanker (membrane or moss-type, boil-off ~0.1% per day)
4. Regasification terminal (converts back to gas, connects to pipeline grid)
5. End user (power plant, industrial, residential)

Key concepts:
- Destination flexibility: historically, LNG contracts were destination-restricted (locked to specific buyer). Modern spot/DES contracts are flexible — cargo can be sold and redirected en route.
- Spot vs long-term contracts: most LNG was sold on 20-year contracts indexed to oil (JCC — Japan Crude Cocktail). Spot market now ~35% of volumes and growing.
- Oil-indexed pricing: traditional Asian LNG contracts = slope × JCC + constant. Slope is typically 11-14%.
- Henry Hub-linked: US LNG sold as HH + liquefaction fee (~$2.25-3.50/MMBtu) + shipping.
- Panama Canal: US LNG to Asia must transit Panama or go around Cape of Good Hope if Panama is congested/restricted.
- Key players: Qatar (largest), Australia, US, Russia (Yamal LNG), Nigeria, Trinidad.

### Power Markets

Spark spread = electricity price - (gas price × heat rate)

Heat rate: efficiency of a gas power plant, measured in MMBtu per MWh. A 50% efficient plant has heat rate of 6.824 MMBtu/MWh (3.412/0.5).

Dark spread = electricity price - (coal price × heat rate for coal plant)

Clean spark/dark spread = spark/dark spread adjusted for carbon cost (ETS price × emissions intensity).

Switching spread: at what gas price does a utility switch from gas to coal (or vice versa)? This creates a natural floor for gas demand.

European power market:
- Merit order: plants dispatched from cheapest to most expensive until demand is met. Marginal plant sets the price.
- Gas plants are often marginal → high gas prices = high power prices (2022 energy crisis)
- Carbon price (EU ETS): adds cost to fossil fuel generation, favors renewables, nuclear
- Negative prices: when renewables flood the grid with inflexible must-run nuclear (Germany, France)

---

## 3. Metals

### Precious Metals

Gold:
- Priced in USD/troy oz on COMEX (futures) and LBMA (spot/OTC)
- Primary driver: real interest rates (nominal rates minus inflation expectations). Lower real rates → higher gold.
- Also driven by: USD strength (inverse), safe haven demand (geopolitical/financial stress), central bank buying, jewelry/industrial demand
- Gold as inflation hedge: long-term yes, but poor short-term timing tool
- ETF holdings (SPDR GLD) as proxy for investor demand
- Gold lease rate: rate at which central banks lend gold to bullion banks

Silver:
- Hybrid: part precious metal (safe haven), part industrial (solar panels, electronics, 50%+ of demand)
- Higher volatility than gold; gold/silver ratio = gold price / silver price; mean reverts but range is wide (30x to 100x+)

Platinum and Palladium:
- Primarily industrial: autocatalysts (gasoline engines use palladium, diesel engines use platinum)
- Palladium: supply concentrated in Russia and South Africa; was in chronic deficit 2016-2022 as ICE auto demand exceeded mine supply; EV transition is long-term demand headwind
- Platinum: cheaper than palladium in 2020-2024, substitution trend from Pd to Pt in catalysts

### Base Metals (LME)

LME (London Metal Exchange):
- Official exchange for copper, aluminum, zinc, nickel, lead, tin, cobalt, steel
- Prompt dates: spot contracts settle in 2 days (T+2); LME trades every business day as a prompt date
- Warehouse system: LME-approved warehouses globally; metal can be delivered to/from warrant (warehouse receipt)
- Cancellations: requests to withdraw metal from LME warehouses; rising cancellations = tightening supply
- Cash-to-3-month spread: equivalent to the futures curve; contango or backwardation

Copper:
- "Dr. Copper": barometer of global economic health due to broad industrial use (construction, electrical, machinery, EVs)
- Supply: Chile (40% of world mine supply), Peru, Congo, China smelting
- Demand: China ~55% of global refined copper demand; urbanization, power grid, EVs
- Key metric: LME/SHFE inventory levels, TC/RCs (treatment/refining charges — smelter margin)
- EV demand: one EV uses ~83kg copper vs ~23kg in an ICE vehicle; long-term bullish structural thesis
- TC/RC: miners pay smelters to process concentrate. Low TC/RC = concentrate is scarce (bullish for copper price); high TC/RC = surplus concentrate

Aluminum:
- Most energy-intensive metal: electricity ~40% of production cost → aluminum is "solidified electricity"
- China dominates production (57%); energy costs in China drive global price floor
- Key spread: Midwest premium (US physical premium over LME), European duty-paid premium
- Bauxite → alumina → aluminum via electrolysis (Hall-Héroult process)

Nickel:
- Uses: stainless steel (65%), batteries (EV growth driver)
- Dramatic LME short squeeze in March 2022 (China's Tsingshan caught short; prices doubled in hours; LME suspended trading and controversially cancelled trades)
- Indonesia dominates supply; HPAL (high-pressure acid leach) processing unlocking laterite nickel for batteries
- Class I (99.8%, LME deliverable) vs Class II (NPI, ferronickel — stainless) split is critical

### Steel Raw Materials

Steel value chain:
- Iron ore (BHP, Rio, Vale) + coking coal (BHP, Glencore) → blast furnace → molten iron → basic oxygen furnace → steel
- Electric arc furnace (EAF): uses scrap steel + electricity (lower carbon, more flexible)

Key commodities:
- Iron ore (62% Fe, CFR China): seaborne benchmark priced by Platts; SGX futures
- Coking/metallurgical coal: premium hard coking coal (PHCC) from Australia; SGX futures
- HRC (hot-rolled coil): steel benchmark; futures on CME and SGX

Steel margin: HRC price - iron ore cost - coal cost - conversion cost. Tracking mill margins predicts iron ore/coal demand.

---

## 4. Agricultural Commodities

### Grains and Oilseeds

CBOT (Chicago Board of Trade):
- Corn: US is world's largest producer and exporter; ethanol mandate underpins floor demand (~40% of US corn goes to ethanol)
- Soybeans: US and Brazil as swing exporters; China is dominant buyer; soy crush = meal + oil
- Wheat: multiple classes (HRW, SRW, HRS, white); global production dispersed (US, EU, Russia, Australia, Canada)

Soybean crush spread = soybean meal price + soybean oil price - soybean price. Measures crush margin for processors.

Key reports:
- WASDE (World Agricultural Supply and Demand Estimates): USDA monthly report; most important for grain markets; released ~10th of each month. Always market-moving.
- USDA Crop Progress: weekly planting and condition ratings during growing season
- Grain stocks reports: quarterly (March, June, September, December); surprises move markets hard
- Export inspections and export sales: weekly demand proxies

Weather as a trading factor:
- La Nina: drier Argentina/southern Brazil, wetter US Midwest corn belt
- El Nino: wetter South America, variable impacts globally
- US Corn Belt: summer heat/drought (August critical for corn pollination) vs adequate moisture
- Brazilian soy: two crops (safrinha second crop timing is critical)
- Black Sea: Russia/Ukraine wheat — geopolitical overlay on weather risk (2022 war disrupted exports)

### Soft Commodities

Sugar (#11 raw, ICE Futures US):
- Brazil is swing producer (50%+); produces ethanol and sugar from the same cane
- Brazil's sugar/ethanol split: mills choose based on relative prices → sugar price linked to oil price/ethanol economics
- Indian exports: major swing factor; Indian government policy (minimum price, export subsidies/bans) creates volatility
- Seasonal: Northern Hemisphere crop (October start), Brazilian crop (April-May start)

Coffee (arabica #C on ICE, robusta on ICE Europe):
- Arabica: grown at altitude, higher quality; Brazil and Colombia dominate
- Robusta: Vietnam is largest producer; used in instant coffee, espresso
- Brazil biennial bearing: on years produce more, off years less — two-year price cycle
- Frost risk: Brazilian arabica growing regions (Minas Gerais) can be hit by frost → price spikes

Cocoa (ICE US and ICE Europe):
- West Africa: Ivory Coast (~40%) and Ghana (~15%) dominate world production
- Grinding margin: cocoa bean → cocoa butter + cocoa powder; ratio is key
- Political risk: Ivory Coast/Ghana government intervention in marketing seasons, LID (living income differential)

Cotton (#2 on ICE):
- US, India, China, Brazil are major producers
- Demand: competing with synthetic fibers (polyester linked to oil prices)

---

## 5. Shipping

### Dry Bulk

Baltic Dry Index (BDI): composite of Capesize (40%), Panamax (30%), Supramax (30%) rates.

Vessel classes:
- Capesize (180,000+ DWT): too large for Panama/Suez canals; iron ore and coal from Australia/Brazil to China
- Panamax (60,000-80,000 DWT): fits Panama Canal; grain, coal, minor bulks
- Supramax/Ultramax (50,000-65,000 DWT): flexible with own cranes; minor bulks, grain
- Handysize (20,000-40,000 DWT): regional trade, smaller ports

What drives dry bulk rates:
- Iron ore and coal imports into China (Capesize dominant driver)
- Grain exports from US/South America (Panamax/Supramax)
- Port congestion (locks up vessel supply, tightens market)
- Fleet supply: newbuilding deliveries, scrapping; fleet grows slowly (2-3 year build time)
- Seasonality: South American grain export season (Q2), Australian coal (Q1/Q4)
- Canal disruptions: Panama drought (2023-2024 lowered lake levels, restricted transits)

### Tankers

Dirty tankers (crude):
- VLCC (Very Large Crude Carrier, 200,000-320,000 DWT): Saudi/ME to Asia/US; Worldscale pricing
- Suezmax (120,000-200,000 DWT): West Africa, Med, Black Sea to Atlantic basin
- Aframax (80,000-120,000 DWT): North Sea, Caribbean, Mediterranean

Clean tankers (products):
- LR2 (Long Range 2, ~80,000 DWT): refined products, chemicals
- MR (Medium Range, 40,000-55,000 DWT): gasoline, diesel, short/medium haul

Worldscale: freight rate index; WS 100 is a base rate for each route calculated annually; actual rates quoted as % of WS100.

Rate drivers:
- Demand: refinery runs, crude trade flows, distance (ton-miles)
- Supply: fleet size, scrapping, demolitions, newbuilds
- Geopolitics: sanctions reroute trade (Russian crude going to India/China via shadow fleet in 2022+), Red Sea attacks 2023-2024 rerouted tankers around Africa (massive ton-miles increase)

### Incoterms (Critical for Physical Trading)

- FOB (Free On Board): seller delivers to named port, loads onto vessel. Buyer bears ocean freight and insurance. Commonly used for bulk commodities.
- CIF (Cost, Insurance, Freight): seller pays freight and insurance to named destination port. Risk transfers when goods cross ship's rail at origin.
- CFR (Cost and Freight): seller pays freight but not insurance.
- DES (Delivered Ex Ship): seller delivers to destination port; buyer pays discharge. Common in LNG.
- DAP (Delivered At Place): seller delivers to named destination, not unloaded.
- EXW (Ex Works): buyer bears all costs and risks from seller's facility.

FOB vs CIF distinction matters enormously:
- FOB buyer controls shipping → can shop for cheaper freight, has vessel optionality
- CIF seller controls shipping → seller takes freight risk, may embed margin in freight
- For trading houses: owning the freight leg is an additional profit center and source of optionality

### Freight Derivatives (FFAs)

Forward Freight Agreements: OTC derivatives referencing BDI routes.
- Used by shipowners, charterers, and commodity trading companies to hedge or speculate on freight rates
- Baltic Exchange assessments are the settlement benchmarks
- Example: a trading house expecting a large Brazilian grain cargo books forward tonnage via FFAs

---

## 6. Key Formulas and Relationships

    Cost of carry (continuous):
    F = S × e^((r + u - y) × T)

    Cost of carry (discrete):
    F = S × (1 + r + u - y)^T

    Contango: F > S → (r + u) > y
    Backwardation: F < S → y > (r + u)

    Basis = Spot price - Futures price
    (Note: some markets define basis as Futures - Spot; be consistent within context)

    Roll yield (annualized approximation):
    Roll yield ≈ (F_near - F_far) / F_far × (periods per year)
    Positive in backwardation (near > far), negative in contango.

    Crack spread (3-2-1):
    = (2 × Gasoline price + 1 × Distillate price - 3 × Crude price) / 3

    Spark spread:
    = Power price ($/MWh) - Gas price ($/MMBtu) × Heat rate (MMBtu/MWh)

    Clean spark spread:
    = Spark spread - Carbon price × Emissions intensity (tCO2/MWh)

    Soybean crush:
    = Soybean meal ($/ton × 44 lbs/bushel ÷ 2000) + Soybean oil (cents/lb × 11 lbs/bushel ÷ 100) - Soybean price ($/bushel)
    (Approximate; exact depends on extraction rates)

    LNG oil-indexed price:
    = Slope × JCC + Constant
    e.g., 13% × $80/bbl + $0.50 = $10.90/MMBtu

    Steel margin:
    = HRC price - (1.6 × Iron ore price + 0.6 × Coking coal price + Conversion cost)
    (Ratios are approximate; 1 tonne steel requires ~1.6t iron ore + ~0.6t coking coal)

---

## 7. Trading Strategies

### Directional Trades
- Outright long/short futures based on supply/demand view
- Example: long crude on expectation of OPEC+ production cut

### Calendar Spreads
- Buy near contract, sell deferred (or vice versa)
- Expresses a view on the steepness of the curve rather than outright price
- Lower margin requirement than outright; less exposed to absolute price moves
- Example: buy Dec/sell Feb natural gas heading into winter, expecting winter withdrawal to flip curve to backwardation

### Crack Spreads
- Buy crude, sell refined products → long refining margin
- Refiners use to hedge their margin; speculators use to express view on product demand
- Example: long RBOB crack spread ahead of summer driving season

### Location Spreads (Basis Trades)
- Buy commodity at location A, sell at location B; profit from transportation arbitrage
- Example: long WTI, short Brent when US crude is priced at unusual discount and export capacity is available
- Example: buy US Gulf Coast LNG, sell Asian JKM swap when LNG arbitrage window opens

### Storage Arbitrage (Contango Play)
1. Buy spot commodity
2. Sell deferred futures
3. Store commodity
4. Deliver at expiry
- Profitable when: F_deferred - F_spot > storage cost + financing cost
- Requires physical access to storage (or renting it)
- Risk: storage costs rise, financing costs rise, futures price drops before delivery

### Relative Value / Spread Trades
- Gold/silver ratio: when ratio is at extremes (>85x), historical mean reversion trade
- Copper/aluminum: industrial demand divergence
- WTI/Brent: export capacity, pipeline infrastructure, regional supply/demand
- Henry Hub/TTF: LNG export capacity arbitrage

### Physical Arbitrage (Trading House Bread-and-Butter)
- Locational: cheap barrels in West Africa → premium market in Asia; own the vessel, capture the spread
- Quality: buy cheap high-sulfur crude, blend with sweet light crude, sell as a mid-grade
- Timing: buy physical in contango, store, sell forward
- Grade/specification: buy off-spec material at discount, blend or process to on-spec

---

## 8. Risk Factors

**Price risk:** Outright commodity price movement. Hedged via futures/swaps. Residual exposure is often intentional (proprietary position) or unavoidable basis risk.

**Basis risk:** Mismatch between physical commodity held and hedging instrument. A physical trader long Nigerian Bonny Light hedged with ICE Brent bears Bonny Light/Brent differential risk. This differential can move independently.

**Logistics/operational risk:** Vessel delays, port congestion, pipeline outages, customs clearance, force majeure clauses. Physical traders must manage these operationally; contracts contain provisions for these events.

**Counterparty risk:** Physical contracts with producers, consumers, or intermediaries carry credit risk. Trading houses use credit limits, letters of credit (LCs), and bank guarantees. Exchange-cleared contracts have central counterparty clearing.

**Weather risk:** Agriculture (drought, frost, flood affecting crop yields), natural gas (temperature driving heating/cooling demand), hydro power (drought affecting water levels and hydro generation).

**Geopolitical risk:** Supply disruption premium in oil (Middle East war risk), sanctions creating trade flow dislocations (Russia 2022+), export bans (Indonesian palm oil 2022, Indian wheat 2022).

**Regulatory/environmental risk:** Carbon pricing (EU ETS), environmental regulations affecting refinery specs (IMO 2020 sulfur cap), export/import restrictions, sanctions compliance.

**Storage risk:** Tank capacity availability, costs rising in contango markets, commodity deterioration (grain moisture, crude API drift), safety (fire, spill liability).

**Quality/grade risk:** Commodity delivered does not meet specification; buyer rejects or demands discount. Critical in crude oil (API gravity, sulfur, BS&W — basic sediment and water), grains (moisture content, test weight), metals (LME grade vs off-grade).

**Liquidity risk:** Inability to exit a large position without significant market impact; particularly acute in less liquid months, complex spreads, or niche markets.

**Funding/margin risk:** In a volatile market, variation margin calls can be enormous. Even a profitable physical hedge can create short-term cash flow crisis if futures position marks against you before physical delivery locks in profit. Trafigura, Vitol, and others faced massive margin calls in 2022 energy price spike.

---

## 9. Interview Focus: Trading House and Energy Major Questions

### "Explain contango and backwardation — why do they occur?"

Contango: futures price > spot. Occurs when storage costs + financing cost > convenience yield. Storage is economic; the market incentivizes building inventory. Typical in well-supplied markets.

Backwardation: spot > futures. Occurs when convenience yield is high — physical holders demand a premium because near-term supply is tight and the risk of running out is real. Typical in tight markets.

Key insight: backwardation is the "natural" state for commodities that have significant convenience yield (oil, gas). The curve tells you about the market's view of near-term tightness. Deep backwardation at the front = acute shortage.

### "Walk me through a physical commodity trade"

Example — crude oil (Glencore/Vitol style):

1. Origination: Glencore has a term offtake agreement with an Angolan state producer (Sonangol) — 1 cargo per month of 950,000 barrels of Cabinda crude.
2. Pricing: agreed at Dated Brent ± differential. Cabinda might trade at Dated Brent +$0.20 because it has favorable yield for certain refineries.
3. Logistics: Glencore nominates an Aframax tanker (or VLCC if splitting to combine with other West African cargoes). Vessel chartered from a shipowner or Glencore's owned fleet.
4. Hedging: at point of purchase, Glencore sells ICE Brent futures to hedge price risk. Now they are long a Cabinda differential and have hedged the outright Brent price.
5. Marketing: Glencore sells the cargo to a refinery in India at Dated Brent +$0.30. They locked in $0.10/bbl on the differential plus any uplift from chartering the vessel cheaply.
6. Execution: bill of lading issued at Angolan terminal; cargo sails to India; NOR (Notice of Readiness) tendered at Paradip; discharge completed; documents transferred; payment received.
7. Hedge unwind: futures hedge lifted when physical cargo is priced and delivered.
8. P&L: origination margin + freight margin + any quality/blending value extracted.

### "What drives the oil price?"

Short-term: OPEC+ production decisions, US inventory data (EIA Wednesday), geopolitical events (supply risk premium), refinery outages, weather, speculative positioning.

Medium-term: supply investment cycle (rig counts, DUC completions, shale activity), OPEC quota compliance, demand growth trajectory, inventory levels vs seasonal norms.

Long-term: energy transition (EV penetration, efficiency mandates), emerging market demand growth (India, Africa), upstream investment adequacy (years of underinvestment → eventual supply tightness).

### "Explain convenience yield"

The non-financial benefit of holding physical inventory. A refinery needs crude on hand — if it runs out, it shuts down and loses far more than the crude cost. A utility needs gas in storage to serve customers during a cold snap. The willingness to pay above the "fair value" carry cost to hold physical rather than a futures contract is the convenience yield. High convenience yield → backwardation → the futures curve reveals market tightness.

### "How does a commodity trading house make money?"

1. Physical arbitrage: locational, temporal, quality
2. Freight optimization: chartering vessels cheaply, capturing freight margin
3. Infrastructure: owning storage (optionality — store when contango, sell when tight), ports, pipelines
4. Optionality: the option to reroute a cargo, blend to different spec, switch delivery destination
5. Information edge: proprietary knowledge of supply chains, vessel positions, production quality, logistics capacity
6. Financial/paper trading: hedging creates natural P&L, but traders also run proprietary books
7. Long-term offtake agreements: securing supply at index-linked prices, selling at spot during backwardation
8. Blending/processing: creating value by mixing grades to meet precise specifications

### "What's happening in energy markets right now?"

As of early 2026:
- Crude oil: Brent in $70-80/bbl range; OPEC+ has been managing production cuts since 2022; US shale production at all-time highs above 13mb/d; demand growth remains positive but slowing from China slowdown; geopolitical risk premium from Middle East and Russia ongoing.
- Natural gas: European gas prices (TTF) have normalized significantly from the 2022 crisis highs; European storage rebuilt; LNG import infrastructure expanded massively; US Henry Hub remains volatile with LNG export growth and weather-driven demand swings.
- LNG: significant new US LNG export capacity ramping (Plaquemines LNG, Corpus Christi expansion); competition for LNG supply intensifying between Europe and Asia.
- Power: European electricity markets restructuring post-crisis; AI data center demand growth driving electricity demand in the US; nuclear restarts (Germany reversed closure policy; US keeping plants open).
- Battery metals: lithium prices collapsed from 2022-2023 highs on oversupply; nickel similarly weak; EV demand growth slower than projected; supply investment cycle has been disrupted.

### Firm-Specific Framing

**Glencore:** Vertically integrated; mines metals (copper, cobalt, zinc, coal) and trades everything. Physical marketing of own production plus third-party material. Coal business is controversial but highly profitable. Strong in metals and bulk commodities.

**Trafigura:** Privately held; strong in oil and metals. Major oil trader (Puma Energy retail network). Known for aggressive origination in challenging markets (Congo, Russia historically). Physical infrastructure investments.

**Vitol:** Largest independent oil trader by volume. Privately held. Strong in crude and products. Owns refineries, storage, and retail networks in Africa. Fleet operations.

**Mercuria, Gunvor, Freepoint:** Other large energy commodity traders with similar physical arbitrage models.

**Shell Trading and ExxonMobil:** Trading arms of integrated majors. Primarily market own production and hedge corporate exposures, but also run third-party trading books. Interview focus: upstream-downstream integration, hedging, risk management, not purely trading house arbitrage.

---

## 10. Cross-Asset Connections

**Commodities → Rates:**
- Storage financing cost links to short-term interest rates (higher rates = more expensive to carry inventory = widening contango, all else equal)
- Commodity price inflation feeds into CPI → central bank reaction function → rate moves
- Real rates: core driver of precious metals (lower real rates = higher gold)

**Commodities → FX:**
- Most commodities priced in USD; USD appreciation → commodity prices fall in USD terms (all else equal)
- Terms of trade effect: commodity-exporting countries (AUD, CAD, BRL, CLP, RUB historically, ZAR) see their currencies strengthen when commodity prices rise
- AUD/USD as copper/iron ore proxy; CAD/USD as oil proxy; NOK as oil proxy
- Petrodollar recycling: oil exporters earn USD, recycle into financial assets

**Commodities → Equities:**
- Energy sector earnings directly driven by crude price; integrated majors (XOM, CVX, Shell, BP) see significant earnings volatility
- Mining equities: optionality on metal prices; equity = leveraged bet on commodity price above cost curve
- Input costs: energy-intensive industries (airlines, chemicals, aluminum) are hurt by high energy prices
- Agricultural input costs: fertilizer, food processing companies

**Commodities → Credit:**
- High-yield energy and mining bonds priced partly on commodity price
- Credit cycle for commodity producers: high prices → capex boom → overinvestment → supply glut → price collapse → defaults (2015-2016 US shale credit cycle)
- Sovereign credit: Venezuela, Ecuador, Nigeria — commodity export revenues fund debt service; commodity collapse = sovereign distress

**Commodities → Macro:**
- Copper as growth indicator: "Dr. Copper" because broad industrial use makes it a leading indicator of manufacturing activity
- Oil price as tax/transfer: oil price rise transfers wealth from consumers (oil-importing countries) to producers; net negative for global growth
- Terms of trade shocks: a commodity price shock reallocates income globally; winners and losers are geographically concentrated
- Inflation pass-through: energy and food are large weights in CPI; commodity price spikes feed directly into headline inflation (2021-2022 global inflation surge was substantially commodity-driven)
- Commodity supercycle thesis: multi-decade periods of sustained high real prices driven by supply-demand imbalances; last supercycle 2000-2014 driven by Chinese urbanization
