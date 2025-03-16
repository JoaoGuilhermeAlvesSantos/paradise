#!/bin/bash

BASE_DIR="$(dirname "$0")"

MODULE="${1?'Usage: paradise <module> <subcommand> [args...]'}"
SUBCOMMAND="${2?'Usage: paradise <module> <subcommand> [args...]'}"
shift 2

MODULE_SCRIPT="$BASE_DIR/modules/$MODULE/$MODULE.sh"

[ -f "$MODULE_SCRIPT" ] || { echo "Error: Module '$MODULE' not found!"; exit 1; }

