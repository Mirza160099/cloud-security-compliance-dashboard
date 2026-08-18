# Suggested DAX Measures

```DAX
Total Findings = COUNTROWS(Findings)

Compliant Findings =
CALCULATE(
    COUNTROWS(Findings),
    Findings[compliance_status] = "Compliant"
)

Compliance Rate =
DIVIDE([Compliant Findings],[Total Findings])

Non-Compliant Findings =
CALCULATE(
    COUNTROWS(Findings),
    Findings[compliance_status] = "Non-Compliant"
)

High Critical Findings =
CALCULATE(
    COUNTROWS(Findings),
    Findings[severity] IN {"High","Critical"}
)

Open Remediation Items =
CALCULATE(
    COUNTROWS(Findings),
    Findings[remediation_status] IN {"Open","In Progress"}
)

Average Risk Score = AVERAGE(Findings[risk_score])
```
