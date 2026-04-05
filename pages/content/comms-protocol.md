# RADIO COMMS PROTOCOL — QUICK REFERENCE

---
### TYPICAL TRANSMISSIONS

| SCENARIO            | CALL                                                                 | RESPONSE                                                              | END / CONTINUE                          |
|---------------------|----------------------------------------------------------------------|------------------------------------------------------------------------|-----------------------------------------|
| Hailing (CQ)        | CQ CQ CQ, this is AD5UAP, Alpha-Delta-Five-Uniform-Alpha-Papa, standing by. | AD5UAP, this is N2EEC, November-Two-Echo-Echo-Charlie.                | N2EEC, this is AD5UAP. Go ahead.        |
| Directed Call       | N2EEC, N2EEC, this is AD5UAP. Over.                                  | AD5UAP, this is N2EEC. Go ahead.                                      | Continue exchange                       |
| Comm Check          | This is AD5UAP requesting a comm check on one-four-five point one-three-zero megahertz. | AD5UAP, this is N2EEC. Read you four by five.                         | Acknowledge or adjust as needed         |
| Test Transmission   | This is AD5UAP performing a test transmission. No response required. | (No response expected)                                                | End                                     |
| Basic Exchange      | N2EEC, this is AD5UAP. You are five by four. Name [your name], [city]. Over. | AD5UAP, this is N2EEC. Copy, five by five. Name Chris, New York. Over. | Continue or close                       |
| Closing             | N2EEC, this is AD5UAP. Thanks for the contact. 73.                   | 73 / Acknowledged                                                     | AD5UAP clear                            |

---
### SIGNAL REPORT (R/S SCALE)

| R/S Example | Readability              | Strength            | What It Means                     | Likely Cause            | Immediate Action                  |
|-------------|--------------------------|---------------------|-----------------------------------|-------------------------|-----------------------------------|
| 5x5         | Perfectly clear          | Strong              | Ideal comms                       | —                       | No action                         |
| 4x5         | Clear                    | Strong              | Good audio, strong signal         | —                       | No action                         |
| 4x3         | Readable                 | Weak                | Signal issue                      | Position / antenna      | Move, elevate, improve line-of-sight |
| 3x3         | Difficult to read        | Weak                | Both signal + clarity degraded    | Range / environment     | Move, elevate, reduce obstructions |
| 2x5         | Barely readable          | Strong              | Audio problem (not RF)            | Mic / technique         | Adjust mic use, check accessories |
| 2x3         | Barely readable          | Weak                | Multiple issues                   | RF + audio              | Fix position AND mic              |
| 1x2         | Unreadable               | Very weak           | Near loss of comms                | Severe RF issue         | Relocate immediately              |
| Intermittent| Varies                   | Varies              | Cutting in/out                    | Connection / power      | Check battery, connectors         |

---
### TERMINOLOGY

| TERM        | MEANING                                  | USE CASE / NOTE                          |
|-------------|------------------------------------------|------------------------------------------|
| Affirm      | Yes                                      | Use instead of “yes”                     |
| Negative    | No                                       | Use instead of “no”                      |
| Copy        | I understand / received                  | Does not imply compliance                |
| Wilco       | Will comply                              | Implies understood + will act            |
| Over        | End of transmission, reply expected      | Use when handing off                     |
| Out         | End of transmission, no reply expected   | Do not combine with “Over”               |
| Standby     | Wait, I will respond shortly             | Temporary pause                          |
| Say again   | Repeat your last transmission            | Do NOT say “repeat” (artillery term)     |
| Break       | Separator / pause in transmission        | Used to structure long messages          |
| Break break | Urgent / priority traffic                | Interrupt ongoing comms                  |
| Go ahead    | Proceed with your message                | Invitation to transmit                   |
| Clear       | Leaving frequency / done transmitting    | End of presence on channel               |
| 73          | Best regards                            | Common sign-off (amateur radio)          |
