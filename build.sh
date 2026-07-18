#!/bin/bash

set -e

echo "🔄 Cleaning previous build..."
rm -rf docs
mkdir docs

cp static/style.css docs/
cp -r static/img/ docs/ #updated for mac

echo "🏗️  Generating static site from RDF..."
python3 main.py

echo "✅ Site built in ./docs/"
