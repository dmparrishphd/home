#COPYRIGHT 2021 Ana Nimbus 
#LICENSE: https://creativecommons.org/licenses/by-sa/4.0/
#SEE ALSO: https://stackoverflow.com/legal/terms-of-service#licensing
#SEE ALSO: https://stackoverflow.com/questions/48208590/create-unary-operator-in-r
`%/*/<-%` <- function ( name , FUN , safe = TRUE ) {
    `%//%` <- paste0
    NAME <- "%" %//% name %//% "%"
    PARENT <- parent.frame ()
    if ( safe && exists ( NAME , PARENT ) ) stop ( NAME %//% " exists." )
    assign ( NAME , function ( x , ignored ) FUN ( x ) , envir = PARENT ) }
 
