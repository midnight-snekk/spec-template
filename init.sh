#!/bin/bash

# spec-template init — bootstrap a new project with the spec-template workflow

#
# Usage: ./init.sh [target-directory]
#

set -e

SCRIPT_DIR=$(dirname $0)
TARGET_DIR="${1:-.}"

if [ "$TARGET_DIR" = "." ]; then
    TARGET_DIR="$(pwd)"
fi

echo "== Initializing spec-template in: $TARGET_DIR"

# Copy template files (exclude .git and this init script)
for file in ritual.md spec.md testing.md; do
    if [ -f "$TARGET_DIR/$file" ]; then
        echo "$file already exists, skipping"
    else
        cp "$SCRIPT_DIR/$file" "$TARGET_DIR/"
        echo "Copied $file"
    fi
done

# Create empty README.md if it doesn't exist (to be filled in by the team)
if [ -f "$TARGET_DIR/README.md" ]; then
    echo "README.md already exists, skipping"
else
    echo "# <Project Name>\n\n" > "$TARGET_DIR/README.md"
    echo "...\n\n"
    cat $SCRIPT_DIR/issue-commit.md >> "$TARGET_DIR/README.md"
    echo "Created sample README.md"
fi

# Initialize git if not already a repo
if [ -d "$TARGET_DIR/.git" ]; then
    echo "⚠ Directory is already a git repository, skipping git init"
else
    echo "→ Running git init"
    git init "$TARGET_DIR"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  spec-template initialized"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  N.B.: Don't skip out on usage-warning.md from spec-template repo."
echo ""
