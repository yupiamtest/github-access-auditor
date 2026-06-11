# GitHub Access Governance & Offboarding Automation

A DevOps automation project that audits GitHub repository access, identifies users who no longer belong to the organization but still retain repository permissions, and generates compliance reports with automated notifications.

## What is this?

Managing repository access manually becomes difficult as organizations grow. Former employees, contractors, or inactive users may continue to have access to critical repositories, creating security and compliance risks.

This project automates the access review process by integrating with the GitHub API, comparing repository collaborators against an employee database, identifying unauthorized access, generating audit reports, and sending alerts to administrators.

## Features

- Fetch organization members and repository collaborators using GitHub API
- Detect users who have left the organization but still have repository access
- Generate audit and compliance reports in CSV format
- Send automated email notifications for access violations
- Dockerized for easy deployment and portability
- Scheduled execution using Cron Jobs or GitHub Actions
- Maintain audit logs for tracking and troubleshooting
- Modular Bash scripts for easy maintenance and learning

## Prerequisites

- Docker installed
- GitHub Personal Access Token (PAT)
- Bash Shell
- curl
- jq
- GitHub Organization or Repository access
- SMTP server (for email notifications)

## How to Use

### 1. Clone the repository

bash git clone https://github.com/yourusername/github-access-auditor.git cd github-access-auditor 

### 2. Configure credentials

Update the GitHub configuration file:

bash config/github.conf 

Add:

bash GITHUB_TOKEN=your_token ORG_NAME=your_organization 

### 3. Build the Docker image

bash docker build -t github-access-auditor . 

### 4. Run the container

bash docker run -it github-access-auditor 

### 5. Review generated reports

Audit reports will be available in:

text reports/ 

Logs will be available in:

text logs/ 

## Project Structure
github-access-auditor/
│
├── config/
│   ├── github.conf
│   └── employees.csv
│
├── scripts/
│   ├── fetch_github_users.sh
│   ├── audit_access.sh
│   ├── generate_report.sh
│   └── send_mail.sh
│
├── reports/
├── logs/
├── Dockerfile
└── run.sh

## What's Inside

The Docker image contains:

- Ubuntu base image
- Bash scripting environment
- curl for GitHub API communication
- jq for JSON parsing
- Project automation scripts
- Reporting and logging utilities

## Future Enhancements

- Slack and Microsoft Teams notifications
- Automatic access revocation after approval
- Role-based access review
- Web dashboard for audit visualization
- Integration with HR systems
- GitHub Actions-based scheduled scanning

## Author

Ankul Mishra
DevOps | Cloud | Automation | Open Source Enthusiast
