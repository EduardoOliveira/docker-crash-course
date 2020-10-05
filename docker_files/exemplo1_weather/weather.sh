#!/bin/sh

if [ -n "$CIDADE" ]; then
  curl -s https://wttr.in/$CIDADE
else
  curl -s https://wttr.in/gotham
fi