#!/bin/sh -l

# Pfad zur package.json (kann übergeben werden)
PACKAGE_JSON_PATH="${1:-./package.json}"

# Überprüfen, ob die Datei existiert
if [ ! -f "$PACKAGE_JSON_PATH" ]; then
  echo "Error: package.json not found at $PACKAGE_JSON_PATH"
  exit 1
fi

# Version aus der package.json extrahieren
PACKAGE_VERSION=$(node -p "require('$PACKAGE_JSON_PATH').version")

echo "Extracted Node.js package version: $PACKAGE_VERSION"

# Setze die Ausgabe der Version für GitHub Actions
echo "::set-output name=version::$PACKAGE_VERSION"
