
// login to save users progress

//input first segment to be memorized

//after a day, reminder to review "a"
// next day review b + a
// after 5 days: e, d, c, b, a

//a
//ba
//cba
//dcba
//edcba

// after 7 days, then 14, then 30

// then remind at 40 days max 


const arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
let str = "123456789"

// function lastFive(n) {
    
//     const empty = []
//     let emptyStr = ""
    
//     for(let i = 0; i < str.length; i++) {
//        emptyStr = str[i] + emptyStr
//     }
     
//     return emptyStr
  
//  }
 
//  console.log(lastFive(5))
 
 
 function steps(n) {
    for (let row = 0; row < n; row++) {
        let lastFive = ''

        for (let column = 0; column < n; column++) {
            if (column <= row) {
                lastFive += str[row]
            } else {
                lastFive += ' '
            }
        }
        console.log(lastFive)
    }
}
console.log(steps(5))