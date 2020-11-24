#Simple Proof of concept
using WAV
minuet=[
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 96, 22, 141, 41, 105, 122, 11, 30, 70, 121, 26, 9, 112, 49, 109, 14],
        [0, 32, 6, 128, 63, 146, 46, 134, 81, 117, 39, 126, 56, 174, 18, 116, 83],
        [0, 69, 95, 158, 13, 153, 55, 110, 24, 66, 139, 15, 132, 73, 58, 145, 79],
        [0, 40, 17, 113, 85, 161, 2 ,159, 100, 90, 176, 7, 4, 67, 160, 52, 170],
        [0, 148, 74, 163, 45, 80, 97, 36, 107, 25, 143, 64, 125, 76, 136, 1, 93],
        [0, 104, 157, 27, 167, 154, 68, 118, 91, 138, 71, 150, 29, 101, 162, 23, 151],
        [0, 152, 60, 171, 53, 99, 133, 21, 127, 16, 155, 57, 175, 43, 168, 89, 172],
        [0, 119, 84, 114, 50, 140, 86, 169, 94, 120, 88, 48, 166, 51, 115, 72, 111],
        [0, 98, 142, 42, 156, 75, 129, 62, 123, 65, 77, 19, 82, 137, 38, 149, 8],
        [0, 3, 87, 165, 61, 135, 47, 147, 33, 102, 4, 31, 164, 44, 59, 173, 78],
        [0, 54, 130, 10, 103, 28, 37, 106, 5, 35, 20, 108, 92, 12, 124, 44, 131]];

trio=[
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 72, 6, 59, 25, 81, 41, 89, 13, 36, 5, 46, 79, 30, 95, 19, 66],
        [0, 56, 82, 42, 74, 14, 7, 26, 71, 76, 20, 64, 84, 8, 35, 47, 88],
        [0, 75, 39, 54, 1, 65, 43, 15, 80, 9, 34, 93, 48, 69, 58, 90, 21],
        [0, 40, 73, 16, 68, 29, 55, 2, 61, 22, 67, 49, 77, 57, 87, 33, 10],
        [0, 83, 3, 28, 53, 37, 17, 44, 70, 63, 85, 32, 96, 12, 23, 50, 91],
        [0, 18, 45, 62, 38, 4, 27, 52, 94, 11, 92, 24, 86, 51, 60, 78, 31]
    ];
    
println("Minuet:\n",minuet,"\n")
println("Trio:\n",trio,"\n")
val=minuet[1,1]
val2=string("")
for i in 2:16
	global val=minuet[1,1]
	global val2=string("")
	global val=minuet[rand(2:11)][i]
	global val2=string("mozart/M",val,".wav")
	global y, fs = wavread(val2)
	wavplay(y,fs)
end
#trio part
for i in 2:16
	global val=trio[1,1],val2=""
	global val=trio[rand(2:7)][i]
	global val2=string("mozart/T",val,".wav")
	global y, fs = wavread(val2)
	wavplay(y,fs)
end
#Minuet,Dacapo #Need to store the string from 
#above case in list or something of similiar kind
for i in 2:16
	global val=minuet[1,1],val2=""
	global val=minuet[rand(2:11)][i]
	global val2=string("mozart/M",val,".wav")
	global y, fs = wavread(val2)
	wavplay(y,fs)
end
#val=minuet[rand(1:10)][rand(1:10)]
#val2=string("mozart/M",val,".wav")
#println(val2)
#y, fs = wavread(val2)
#wavplay(y,fs)
