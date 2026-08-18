# Architecture

```text
Synthetic AWS / Azure Control Findings
               |
               v
       Data Cleaning / Enrichment
               |
               v
       Compliance Data Model
        /          |          \
       v           v           v
   SQL Analysis  Power BI    Governance Views
       |           |           |
       +-----------+-----------+
                   |
                   v
      Security / Cloud / Audit Decisions
```

## Production adaptation

In a real environment, synthetic files would be replaced by data from services such as:

- AWS Config / Security Hub / IAM Access Analyzer
- Azure Policy / Defender for Cloud / Entra ID
- Cloud asset inventory / CMDB
- Vulnerability management tools
- Ticketing / remediation systems

The portfolio project does not claim direct production integration with those services.
