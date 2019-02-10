#!/bin/bash

mata_kuliah="Sistem Operasi A"
semester=4
mahasiswa=("Khawari" "Raldo" "Aguel" "Tamtam")

echo "Variabel string:" $mata_kuliah
echo "Variabel integer:" $semester
echo "Variabel array ke-1:" ${mahasiswa[0]}
echo "Variabel array ke-2:" ${mahasiswa[1]}
echo "Variabel array ke-3:" ${mahasiswa[2]}
echo "Variabel array ke-4:" ${mahasiswa[3]}