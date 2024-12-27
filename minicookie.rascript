// ~Homebrew~ Mini Cookie
// #ID = 18257
// #MinimumVersion = 1.3

// $0360: [96 bytes] Cookie Data Table
//        0x02=Cookie
//        0x01=Bug Guy
//        0x00=Empty
//        
//        Check for eaten: delta = 2 & mem = 1
function cookie_data_table() => byte(0x000360)

// Poliwrath puzzle

filled_squares = [
    [0,0],
    [0,4],
    [0,5],
    [0,6],
    [0,7],
    [0,11],
    [1,0],
    [1,5],
    [1,6],
    [1,11],
    [2,0],
    [2,3],
    [2,8],
    [2,11],
    [3,0],
    [3,1],
    [3,2],
    [3,3],
    [3,4],
    [3,5],
    [3,7],
    [3,8],
    [3,9],
    [3,10],
    [3,11],
    [4,0],
    [4,1],
    [4,2],
    [4,9],
    [4,10],
    [4,11],
    [5,0],
    [5,1],
    [5,4],
    [5,5],
    [5,6],
    [5,7],
    [5,10],
    [5,11],
    [6,0],
    [6,3],
    [6,8],
    [6,11],
    [7,0],
    [7,3],
    [7,5],
    [7,6],
    [7,11]
]


filled_addr = array_map(filled_squares, (y) => y[0]*12 + y[1] + 0x360)

empty_addr = []
for i in range(0x360, 0x3bf) {
    if !array_contains(filled_addr, i) {
        array_push(empty_addr, i)
    }
}

achievement(
    title = "Pump It Up", points = 1, id = 489282,
    description = "Solve the twelfth Picross puzzle and make art! (See Forum Topic)", trigger =
    sum_of(empty_addr, (x) => byte(x)) == 1 &&
    //all_of(empty_addr, (x) => byte(x) == 0) &&
    sum_of(empty_addr, (x) => prev(byte(x))) == 3 &&
    all_of(filled_addr, (x) => byte(x) == 2)
)

