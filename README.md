# Cloud Security & Compliance Dashboard

A portfolio project connecting **Cyber Security + AWS/Azure + IAM + Compliance + Power BI**.

> **Data note:** All findings in this repository are synthetic. No employer, customer, or production AWS/Azure data is included.

## Business Problem

Cloud-security teams often manage findings across multiple platforms and tools. Without a common reporting model, leaders can struggle to answer:

- What is our current compliance posture?
- Which provider or control domain carries the most risk?
- Where are our MFA, public-exposure or encryption gaps?
- Which High/Critical findings remain unresolved?
- How old are our open risks?
- Which teams own the remediation backlog?
- How do findings map to CIS, ISO 27001 or NIST?

This project creates a unified analytics model and dashboard specification for those questions.

## Tech Stack

- Synthetic AWS/Azure security findings
- SQL
- Power BI-ready CSV model
- DAX
- Cloud security / IAM concepts
- CIS / ISO 27001 / NIST mapping

## Repository Structure

```text
cloud-security-compliance-dashboard/
├── data/
│   ├── raw/
│   └── processed/
├── sql/
├── powerbi/
├── docs/
├── screenshots/
└── README.md
```

## Core KPIs

- Total Findings
- Compliance Rate
- Non-Compliant Findings
- High/Critical Findings
- Open Remediation Items
- Provider comparison
- MFA gaps
- Public exposure findings
- Encryption gaps
- Finding aging
- Risk-score distribution

## Data Model

Key dimensions:

- Provider
- Region
- Control Domain
- Framework
- Severity
- Owner
- Compliance Status
- Remediation Status

Key security fields:

- MFA enabled
- Public exposure
- Encryption enabled
- Finding age
- Risk score

## Dashboard Pages

### Executive Cloud Security Posture
Compliance, severity, provider, framework and aging overview.

### Identity & Access
MFA gaps, IAM ownership, identity-related High/Critical findings and exceptions.

### Network & Data Protection
Public exposure, encryption gaps, provider/region comparison and high-risk findings.

### Remediation & Governance
Open backlog, aging, owner workload, risk score and framework mapping.

## Architecture

```text
AWS-style findings      Azure-style findings
        \                   /
         \                 /
          v               v
         Normalised Compliance Model
                   |
          +--------+--------+
          |                 |
          v                 v
      SQL Analysis       Power BI
          |                 |
          +--------+--------+
                   |
                   v
          Cloud Security Decisions
```

## Production Adaptation

In a real environment, the synthetic source layer could be replaced by:

- AWS Config
- AWS Security Hub
- IAM Access Analyzer
- Azure Policy
- Microsoft Defender for Cloud
- Microsoft Entra ID
- CMDB / asset inventory
- Vulnerability management
- ServiceNow/Jira remediation data

Those integrations are **future production adaptations**, not claims about this portfolio build.

## Security & Governance Considerations

- Apply least-privilege access.
- Use separate Dev/UAT/Prod workspaces.
- Protect sensitive asset/identity fields.
- Consider Power BI row-level security.
- Track accepted-risk exceptions separately.
- Maintain framework/control mapping with governance ownership.
- Avoid using compliance percentage as the sole risk indicator.

## Interview Talking Points

1. Compliance vs security risk.
2. Why IAM deserves its own dashboard view.
3. How public exposure should be interpreted.
4. Why unresolved Critical findings need prioritisation.
5. How remediation aging affects risk.
6. How AWS/Azure findings can be normalised.
7. Framework mapping limitations.
8. Exception and accepted-risk governance.
9. Power BI security/RBAC considerations.
10. How you would automate the pipeline in production.

## Portfolio Status

**Type:** Portfolio Build  
**Dataset:** Synthetic  
**Purpose:** Demonstrate multi-cloud security analytics, IAM, compliance and BI skills.
