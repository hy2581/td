#!/bin/bash
set -e

OUTPUT="TD_5.6.2_71036_Linux_NL.zip"

echo "Reassembling $OUTPUT from split parts..."
cat td_part_* > "$OUTPUT"

SIZE=$(stat -c%s "$OUTPUT" 2>/dev/null || stat -f%z "$OUTPUT" 2>/dev/null)
echo "Done! File size: $SIZE bytes"
echo ""
echo "To install:"
echo "  unzip $OUTPUT"
echo "  chmod +x TD_5.6.2_71036_NL/bin/td TD_5.6.2_71036_NL/bin/td.sh"
echo "  export TD_HOME=\$(pwd)/TD_5.6.2_71036_NL"
echo "  export PATH=\$TD_HOME/bin:\$PATH"
