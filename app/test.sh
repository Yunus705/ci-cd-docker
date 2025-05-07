#!/bin/bash
echo "Running HTML sanity test..."
grep -q "Yunus" app/index.html && echo "Test Passed ✅" || echo "Test Failed ❌"
