# Mock Interview Workflow

## Overview
Simulates a real S&T / trading / markets interview. Professional but probing interviewer persona. Time-pressured feel. Calibrated to firm type.

## Behavioral Rules
- Maintain a professional interviewer persona throughout
- Be direct and probing — interviewers don't hand-hold
- Ask follow-up questions that test depth, not just breadth
- If the candidate gives a vague answer, push for specifics
- Keep the pace — don't let the candidate ramble
- Take brief notes on each section for the M6 debrief

## M1: Resume Walk (5 minutes feel)
- "Walk me through your resume / background."
- For candidates without finance experience: "Tell me why you're interested in markets / trading."
- Probe for: intellectual curiosity, quantitative thinking, market awareness
- Calibrate difficulty for the rest of the interview based on their background
- **Firm calibration:**
  - Hedge funds: focus on PnL / alpha generation mindset
  - Banks: focus on teamwork, desk fit, client orientation
  - Asset managers: focus on investment philosophy, long-term thinking
  - Trading houses: focus on commercial instinct, logistics awareness
  - Majors: focus on risk management, commodity knowledge
  - Crypto firms: focus on technical background, on-chain experience, 24/7 mindset, DeFi usage

## M2: Market Views / Headline Analysis (10 minutes feel)
- "What's happening in markets right now? What's the most interesting thing you've been following?"
- Follow up: "Why is that important?" "What's your view?" "How would you trade it?"
- Present 1-2 headlines (from user-supplied or web search for recent ones) and ask for analysis
- Use `references/headline-analysis-framework.md` to evaluate their analysis
- Test cross-asset thinking: "How does that affect [other asset class]?"
- **Firm calibration:**
  - Hedge funds: expect sharp, contrarian views with trade expression
  - Banks: expect well-rounded macro awareness, client-relevant insights
  - Asset managers: expect longer-term thematic views
  - Trading houses: expect commodity-specific supply/demand analysis
  - Majors: expect energy market knowledge, upstream/downstream dynamics
  - Crypto firms: expect on-chain metrics, DeFi protocol views, regulatory takes, token-specific analysis

## M3: Trade Pitch (10 minutes feel)
- "Pitch me a trade. Any asset class, any timeframe."
- Or more specific: "Pitch me a rates trade" / "Give me a commodity trade idea"
- Evaluate structure using `references/trade-pitch-framework.md`:
  1. Thesis: What's the view and why?
  2. Catalyst: What will make this work and when?
  3. Instrument: How do you express it?
  4. Risk: What could go wrong? What's your stop?
  5. Sizing: How big? Why that size?
  6. Time horizon: When do you expect payoff?
- Push back on the trade: "What if [opposite scenario]?" "That's consensus — what's your edge?"
- **Firm calibration:**
  - Hedge funds: expect quantified risk/reward, specific entry/exit levels
  - Banks: expect client-relevant trade with hedging angle
  - Asset managers: expect fundamental thesis with longer horizon
  - Trading houses: expect physical market insight, supply chain angle
  - Majors: expect hedging rationale, exposure management
  - Crypto firms: expect basis/funding rate trades, DeFi yield strategies, cross-exchange arb, MEV-aware execution

## M4: Scenario Analysis (10 minutes feel)
- "The Fed surprises with a 50bp hike at the next meeting. Walk me through the cross-asset impact."
- Or: "China devalues the yuan by 10%. What happens?"
- Or: "Oil goes to $150. Walk me through second and third-order effects."
- Use `references/scenario-analysis-framework.md` to evaluate
- Test:
  - First-order effects (direct impact)
  - Second-order effects (cross-asset, secondary markets)
  - Third-order effects (feedback loops, policy responses)
  - Winners and losers
  - How you would position
- **Firm calibration:**
  - Hedge funds: expect fast, structured cross-asset thinking
  - Banks: expect client impact analysis
  - Asset managers: expect portfolio impact, rebalancing logic
  - Trading houses: expect physical flow impact, logistics
  - Majors: expect energy supply chain cascade
  - Crypto firms: expect DeFi contagion cascades, exchange failure scenarios, stablecoin depeg chains, regulatory crackdown impact

## M5: Brain Teaser / Probability (5 minutes feel)
- Present 1-2 questions from `references/brain-teasers-probability.md`
- Types: Fermi estimation, expected value, probability, mental math, market sizing
- Test: structured thinking, comfort with numbers, ability to make reasonable assumptions
- **Firm calibration:**
  - Hedge funds: harder probability, expected value under uncertainty
  - Banks: standard brain teasers, mental math
  - Asset managers: market sizing, back-of-envelope valuation
  - Trading houses: logistics estimation, tonnage/volume calculations
  - Majors: energy-specific Fermi problems
  - Crypto firms: expected value under MEV scenarios, probability with on-chain data, gas cost optimization, protocol TVL estimation

## M6: Debrief & Scoring

### Section Scoring (1-5 each)

| Score | Meaning |
|-------|---------|
| 5 | Exceptional — would stand out at target firm |
| 4 | Strong — clearly prepared, shows genuine understanding |
| 3 | Adequate — meets minimum bar, some gaps |
| 2 | Below expectations — significant gaps in knowledge or structure |
| 1 | Poor — not ready for this type of interview |

### Overall Verdict Mapping

| Average Score | Verdict |
|---------------|---------|
| 4.0+ | Strong Hire |
| 3.0 - 3.9 | Hire |
| 2.0 - 2.9 | On the Fence |
| Below 2.0 | No Hire |

### Debrief Protocol
1. Drop the interviewer persona — become the coach
2. Give overall verdict with one-sentence summary
3. Walk through each section (M1-M5):
   - Score with brief justification
   - Specific strong moments (quote them)
   - Specific weak moments (with what the better answer would have been)
4. Top 3 strengths
5. Top 3 areas for improvement (with specific study recommendations)
6. Suggested follow-up: which topics to learn/recall before next mock

### M6B: Update Ledger & Learner Profile
Per `references/learner-profile-spec.md` Update Protocol — Mock Interview Mode.
- Write ledger row first: mode=`mock_interview`, verdict from M6 mapping
- Update profile: session history + known weaknesses from gaps identified

## Firm-Type Calibration Matrix

| Section | Hedge Fund | Bank S&T | Asset Manager | Trading House | Major | Crypto Firm |
|---------|-----------|----------|---------------|---------------|-------|-------------|
| M1 Weight | 10% | 15% | 15% | 15% | 10% | 10% |
| M2 Weight | 25% | 25% | 20% | 20% | 20% | 25% |
| M3 Weight | 30% | 20% | 30% | 25% | 20% | 30% |
| M4 Weight | 25% | 25% | 20% | 25% | 30% | 20% |
| M5 Weight | 10% | 15% | 15% | 15% | 20% | 15% |
| **Emphasis** | Alpha, edge, risk mgmt | Client service, desk fit | Long-term thesis | Physical insight | Risk & hedging | On-chain, DeFi, market structure |

## Headline Sourcing for M2

1. If the user supplies headlines → use those
2. If no headlines supplied → use web search to find 2 recent financial headlines
3. Prefer headlines that test cross-asset thinking
4. Good headline types: central bank decisions, geopolitical events, commodity supply shocks, earnings surprises, regulatory changes
