#!/usr/bin/env zsh

cd "./src"

for file in **/*.{ts,tsx}; do
  echo $file
done
