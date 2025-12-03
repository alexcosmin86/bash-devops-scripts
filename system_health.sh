[200~#!/bin/bash
# System Health Check Script
# Author: alexcosmin86

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

print_header() {
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}================================${NC}"
    echo ""
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

check_system() {
    print_header "System Information"
    echo "Date: $(date)"
    echo "User: $USER"
    echo "Hostname: $(hostname)"
    echo "OS: $(uname -s)"
    print_success "System check completed"
    echo ""
}

generate_report() {
    print_header "Generating Report"
    report_file="system_report_$(date +%Y%m%d_%H%M%S).txt"
    {
        echo "System Health Report"
        echo "Generated: $(date)"
        echo "User: $USER"
        echo "Hostname: $(hostname)"
    } > "$report_file"
    print_success "Report saved to: $report_file"
    echo ""
}

main() {
    echo -e "${BLUE}================================${NC}"
    echo -e "${BLUE}  DevOps System Health Checker  ${NC}"
    echo -e "${BLUE}================================${NC}"
    echo ""
    
    check_system
    generate_report
    
    echo -e "${GREEN}✓ Health check complete!${NC}"
}
main
