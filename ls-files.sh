#!/bin/bash
exec git ls-files | sort | grep -vF -f ls-files.ignore
