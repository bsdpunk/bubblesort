var items
const getStdin = require('get-stdin')

function bubbleSort(items) {  
    var length = items.length;
    for (var i = (length - 1); i >= 0; i--) {
        //Number of passes
        for (var j = (length - i); j > 0; j--) {
            //Compare the adjacent positions
            if (items[j] < items[j - 1]) {
                //Swap the numbers
                var tmp = items[j];
                items[j] = items[j - 1];
                items[j - 1] = tmp;
            }
        }
    }
    return(items)
}

(async () => {
    items = await getStdin();
    items = items.split(" ")
    //=> 'unicorns'
    //console.log(items)
    bubbleSort(items)
    //console.log(sortedArray)
})();
