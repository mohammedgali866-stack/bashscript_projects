#!/bin/bash

#Variable
REPORT_DIR="$HOME/script_projects/sysreport"
REPORT_FILE="$REPORT_DIR/report-$(date +%F).txt"
SERVICES="ssh nginx cron"
#EndofVariables 


mkdir -p "$REPORT_DIR"

check_service() {
	local NAME="$1"
	STATE=$(systemctl is-active "$NAME"  || true)
	echo "$NAME = $STATE"
}

{
	echo "System Report"
	echo "Date: $(date)"
	echo "Host: $(hostname)"
	echo "User: $(whoami)"
	echo 
	echo "Disk:"
	df -h /
	echo 
	echo "Services:"

	for S in $SERVICES; do 
		check_service "$S"
	done

} > "$REPORT_FILE"

echo "Report saved: $REPORT_FILE"


