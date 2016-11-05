
HUNDRED=$(for i in {1..1000}; do printf "$RANDOM "; done)



printf "Node," >> time.log
{ time node bubble.js $HUNDRED; } 2>&1 | grep real | grep -o '[0-9]\+\.[0-9]\+'  >> time.log


printf "R," >> time.log
    { time Rscript bubble.R $HUNDRED; } 2>&1 | grep real | grep -o '[0-9]\+\.[0-9]\+' >> time.log


HUNDRED=$(for i in {1..1000}; do printf "$RANDOM "; done)
    

printf "R," >> time.log
{ time Rscript bubble.R $HUNDRED; } 2>&1 | grep real | grep -o '[0-9]\+\.[0-9]\+' >> time.log


printf "Node," >> time.log
    { time node bubble.js $HUNDRED; } 2>&1 | grep real | grep -o '[0-9]\+\.[0-9]\+' >> time.log


