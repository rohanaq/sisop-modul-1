#!/bin/bash

#Tipe Variabel
mata_kuliah="Sistem Operasi A"
semester=4
mahasiswa=("Khawari" "Raldo" "Aguel")

echo "Hello, sis!"

echo "Variabel string:" $mata_kuliah
echo "Variabel integer:" $semester
echo "Variabel array ke-1:" ${mahasiswa[0]}
echo "Variabel array ke-2:" ${mahasiswa[1]}
echo "Variabel array ke-3:" ${mahasiswa[2]}
echo "============================================="  

#Input Output
echo "INPUT OUTPUT"  
echo "============================================="  

echo "Siapa namamu?"
read nama
echo "Hai $nama, selamat datang di kelas sistem operasi!"
echo "============================================="  

#aritmatika
echo "ARITMATIKA"  
echo "============================================="  

A=0
B=0

echo -n "Masukkan A --> "
read A
echo -n "Masukkan B --> "
read B

echo "$A + $B = $((A + B))"
echo "$A - $B = $((A - B))"
echo "$A * $B = $((A * B))"
echo "$A / $B = $((A / B))"
echo "$A % $B = $((A % B))"

B=$A

echo "A = $A"
echo "B = $B"
echo "============================================="  

#relasional
echo "RELASIONAL"  
echo "============================================="  

echo -n "Masukkan A --> "
read A
echo -n "Masukkan B --> "
read B

if [ $A -eq $B ]
then
   echo "$A -eq $B : A sama dengan B"
else
   echo "$A -eq $B: A tidak sama dengan B"
fi

if [ $A -ne $B ]
then
   echo "$A -ne $B: A tidak sama dengan B"
else
   echo "$A -ne $B : A sama dengan B"
fi

if [ $A -gt $B ]
then
   echo "$A -gt $B: A lebih besar dari B"
else
   echo "$A -gt $B: A lebih kecil dari B"
fi

if [ $A -lt $B ]
then
   echo "$A -lt $B: A lebih kecil dari B"
else
   echo "$A -lt $B: A lebih besar dari B"
fi

if [ $A -ge $B ]
then
   echo "$A -ge $B: A lebih besar atau sama dengan B"
else
   echo "$A -ge $B: A lebih kecil dari B"
fi

if [ $A -le $B ]
then
   echo "$A -le $B: A lebih kecil atau sama dengan B"
else
   echo "$A -le $B: A lebih besar dari B"
fi
echo "============================================="  

#conditional
echo "CONDITIONAL"  
echo "============================================="  

#if
if [ $A == $B ]
then
  echo "A sama dengan B"
elif [ $A -gt $B ]
then
  echo "A lebih besar dari B"
elif [ $A -lt $B ]
then
  echo "A lebih kecil dari B"
else
  echo "Tidak ada kondisi yang memenuhi"
fi
echo "============================================="  

#case
echo -n "Apa makanan yang kamu suka? "
read makanan

case $makanan in
  "pentol") 
    echo "Pentol paling enak sedunia adalah pentol raja depan wardug" 
    ;;
  "pisang")
    echo "Hilo pisang enak, lho! (kata Nahda) Tapi itu minuman" 
    ;;
  "indomie")
    echo "Indomie enak, apalagi pake telor" 
    ;;
  *)
    echo "Maap, berarti makanan yang kamu suka gaenak hehe" 
    ;;
esac
echo "============================================="  

#loop
echo "LOOP"  
echo "============================================="  

a=0

while [ $a -lt 10 ]
do
    echo $a
    a=$((a + 1))
done
echo "============================================="  

for num in 0 1 2 3 4 5 6 7 8 9
do
    echo $num
done
echo "============================================="  

select minuman in teh kopi air jus susu semua gaada
do
  case $minuman in
    teh|kopi|air|semua) 
        echo "Beli di warung!"
        ;;
    jus|susu)
        echo "Bikin sendiri di rumah!"
    ;;
    gaada) 
        break 
    ;;
    *) echo "ERROR" 
    ;;
  esac
done
echo "============================================="  

