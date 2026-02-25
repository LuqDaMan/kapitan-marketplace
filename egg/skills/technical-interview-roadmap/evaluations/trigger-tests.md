# Trigger Tests: technical-interview-roadmap

## Should Trigger

| Input | Why |
|-------|-----|
| "technical interview roadmap for Google ML Engineer" | Direct trigger phrase + company + role |
| "coding interview prep for Stripe" | Exact trigger phrase |
| "DSA roadmap for Citadel quant developer" | Exact trigger phrase + quant company |
| "leetcode prep for Meta SWE" | Exact trigger phrase |
| "what problems should I practice for the Amazon interview?" | Trigger phrase "what problems should I practice for" |
| "interview study plan for Anthropic" | Trigger phrase "interview study plan" |
| "prep me for the technical rounds" | Exact trigger phrase |
| "technical prep for Jane Street" | Trigger phrase "technical prep for" |
| "what should I study for the Two Sigma coding interview?" | Trigger phrase "what should I study for" |
| "coding prep plan for DeepMind" | Trigger phrase "coding prep plan" |
| "I just finished tailoring my resume, now prep me for the technical interview" | Post-resume-builder context |
| "create a DSA study plan for my Google onsite" | Trigger phrase "DSA study plan" + company |
| "help me prepare for the coding rounds at Netflix" | Implied technical prep request |

## Should NOT Trigger

| Input | Why | Correct Skill |
|-------|-----|---------------|
| "tailor my resume for this JD" | Resume tailoring, not interview prep | resume-builder |
| "teach me two sum" | Learning a specific problem | leetcode-teacher |
| "explain binary search to me" | Learning a concept | leetcode-teacher |
| "prep behavioral for Google SWE" | Behavioral interview prep | behavioral-interview-prepper |
| "practice behavioral questions" | Behavioral, not technical | behavioral-interview-prepper |
| "mock interview for S&T rates desk" | Markets technical interview | global-markets-teacher |
| "quiz me on derivatives" | Finance content, not DSA | global-markets-teacher |
| "help me with system design interview" | System design, not DSA | — (out of scope) |
| "recall two sum" | Recall mode for a specific problem | leetcode-teacher |
| "explain how to solve two sum step by step" | Teaching a specific problem | leetcode-teacher |
| "write a cover letter" | Cover letter generation | resume-builder |

## Edge Cases

| Input | Expected Behavior |
|-------|-------------------|
| "technical interview roadmap" (no resume-builder output exists) | Trigger skill, but Step 1 should detect missing `notes.md` and prompt user to run resume-builder first |
| "coding prep for Citadel" (no leetcode-teacher profile exists) | Trigger skill, default to Intermediate calibration, note in output that profile was not found |
| "technical prep for a startup I'm interviewing at" (no specific company) | Trigger skill, ask for company name, use Startup archetype if company research is thin |
| "DSA roadmap for Goldman Sachs trading technology" | Trigger skill, map to Quant/HFT archetype, finance domain |
| "prep me for the coding rounds" (ambiguous — could be behavioral-interview-prepper) | Should trigger technical-interview-roadmap due to "coding rounds" — distinct from "behavioral" |
| "I finished my resume, what's next?" | May trigger if resume-builder output exists and context suggests technical prep; otherwise ask for clarification |
| "prep me for all interviews at Google" | Should trigger this skill for technical portion; may also suggest behavioral-interview-prepper separately |
| "Create a roadmap for both technical and behavioral prep" | Should trigger this skill for the technical portion; suggest behavioral-interview-prepper for behavioral prep |
