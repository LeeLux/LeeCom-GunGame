#code from CloudWolf !

# x_(n+1) = x_(n)*a + c

# a = 1103515245, c = 12345

scoreboard players operation #lcg random *= #num random
scoreboard players add #lcg random 12345
scoreboard players operation out random = #lcg random