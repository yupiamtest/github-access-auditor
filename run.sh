#!/bin/bash
source config/github.config

bash scripts/get_member.sh
bash scripts/audit_access.sh
