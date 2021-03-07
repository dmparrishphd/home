# PROOF OF CONCEPT FOR VISUALIZATION OF DIRECTION AND MAGNITUDE
# INDICATE DIRECTION WITH HUE:
#   RED --> RIGHT, CYAN --> LEFT
#   VIOLET --> DOWN ("V"), YELLOW-GREEN --> UP
# INDICATE MAGNITUDE WITH LUMA
#   BLACK: MAXIMUM (OR BEYOND THRESHOLD) MAGNITUDE
#   WHITE: ZERO MAGNITUDE


n <- 16
CENTER <- rep ( n %/% 2 , 2 )

DOWN <- matrix ( 0 , n , n )
LEFT <- matrix ( 0 , n , n )

DOWN <- ( col ( DOWN ) - CENTER [[ 1 ]] )
LEFT <- ( row ( LEFT ) - CENTER [[ 1 ]] )

		- DOWN
		- LEFT

D <- 360 + floor ( .5 + 180 / pi * atan2 ( - DOWN , - LEFT ) )

		D

QUADRANCE <-
	( row ( DOWN ) - CENTER [[ 1 ]] ) ^ 2 +
	( col ( DOWN ) - CENTER [[ 2 ]] ) ^ 2

Q <- 1 / sqrt ( QUADRANCE )
Q [ ! is.finite ( Q ) ] <- 1
Q <- Q / max ( Q , na.rm = TRUE )

		Q

M <- matrix (
	seq_along ( D ) ,
	nrow ( D ) ,
	ncol ( D ) )
dev.set(rev(dev.list())[1])
image ( M , useRaster = TRUE , col = grey ( 1 - Q ) )
dev.set(rev(dev.list())[2])
image ( M , col = hcl ( h = D ) , useRaster = TRUE )
dev.set(rev(dev.list())[3])
COL <- hcl ( h = D , l = 100 * ( 1 - Q ) )
image ( M ,
	useRaster = TRUE ,
	col = COL )

# UNCOMMENT png... AND dev.off() TO
# **** OVERWRITE **** png GRAPHIC TO THE WORKING DIRECTORY
# png ( file = "flow.png" , height = 400 * 8.3 , width = 400 * 11 , res = 400 )
	par ( mfrow = c ( 1 , 3 ) , omi = c ( 3 , 1 , 2 , 1 ) )
	image. <- function ( ... )
		image ( z = M , useRaster = TRUE , xaxt="n" , yaxt = "n" , bty = "n" , ... )
	image. ( col = grey ( 1 - Q ) , xlab = "A" )
	image. ( col = hcl ( h = D , l = 100 * ( 1 - Q ) ) , xlab = "B" )
	image. ( col = hcl ( h = D ) , xlab = "C" )
# dev.off()
