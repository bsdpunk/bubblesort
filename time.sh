
HUNDRED=$(for i in {1..100}; do printf "$RANDOM "; done)
{ time node bubble.js $HUNDRED; } 2>&1 | grep real
