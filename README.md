### Modul 1 Sistem Operasi
# Shell Scripting dan AWK

## Syarat Mengikuti Modul
1. Linux OS 
2. CLI (Command Line Interface)
    n.b. Untuk penyegaran tentang CLI Linux, silahkan dibaca kembali [Modul Pengenalan CLI](https://github.com/raldokusuma/modul-pengenalan-CLI)
  
## Tujuan
1. Praktikan mengetahui apa itu shell dan shell scripting
2. Praktikan memahami tujuan dan manfaat dari shell scripting
3. Praktikan memahami bagaimana cara membuat shell script

## Daftar Isi
  - [1. Shell Scripting](#1-shell-scripting)
    - [1.1 Shell](#11-shell)
    - [1.2 Shell Scripting](#12-shell-scripting)
    - [1.3 Cara Membuat Shell Script](#13-cara-membuat-shell-script)
    - [1.4 Shell Variables](#14-shell-variables)
    - [1.5 Input Output](#15-input-output)
    - [1.6 Quoting Character](#16-quoting-character)
    - [1.7 Aritmatika](#17-aritmatika)
    - [1.8 Conditional](#18-conditional)
    - [1.9 Loop](#19-loop)
    - [1.10 Function atau Subroutine](#110-function-atau-subroutine)

## 1. Shell Scripting
### 1.1 Shell
Sebuah sistem operasi terdiri dari dua komponen utama, yaitu **Kernel** dan **Shell**.

![component](/assets/component.png)

* **Kernel** adalah inti dari komputer. Komponen inilah yang memungkinkan terjadinya komunikasi antara software dan hardware. Jika kernel adalah bagian terdalam dari sebuah sistem operasi, maka **shell** adalah bagian terluarnya (antarmuka sistem).
* **Shell** adalah sebuah lingkungan dimana kita dapat menjalankan program, perintah, maupun shell script. Shell menerima input dari user berupa serangkaian perintah, kemudian memprosesnya dan mengeluarkan output. Shell dapat diakses melalui **Terminal** yang menjalankannya.

> Catatan: Cobalah membuka terminal di Linux, maka kamu akan menemukan **command prompt** Shell (biasanya **$**). Disitu, kamu dapat mengetik input berupa perintah, kemudian mengeksekusinya dengan menekan tombol "Enter". Output akan ditampilkan di terminal.

Ada 2 tipe shell utama di dalam sistem operasi Linux, yaitu:
1. **Bourne Shell** - Prompt untuk shell ini adalah **$**. Berikut adalah subkategorinya:
    * Bourne Shell (sh)
    * POSIX Shell (sh)
    * Korn Shell (ksh)
    * Bourne Again SHell (bash) 
2. **C Shell** - Prompt untuk shell ini adalah **%**. Berikut adalah subkategorinya:
   * C Shell (csh)
   * TENEX/TOPS C Shell (tcsh)

### 1.2 Shell Scripting
* **Shell scripting** adalah sebuah kegiatan menulis serangkaian perintah untuk dieksekusi oleh Shell. Konsep dasarnya sederhana, hanya sebuah file yang berisi daftar perintah (Linux commands) yang ditulis berdasarkan urutan eksekusinya. 
* Dengan menggunakan shell script, kita dapat menyederhanakan serangkaian perintah yang panjang dan berulang menjadi sebuah script tunggal yang dapat disimpan dan dieksekusi kapanpun kita inginkan. Tentu saja hal ini akan sangat menghemat waktu dan tenaga kita.
* Selain itu, shell script juga dapat menjalankan perintah secara otomatis dan terjadwal.

### 1.3 Cara Membuat Shell Script
1. Buatlah sebuah file berekstensi **.sh** menggunakan editor apapun, misalnya `nano`, `vim`, atau `gedit`.
   ```bash 
   nano hello-sisop.sh
   ```
2. Tulis beberapa baris perintah disana, diawali dengan **shebang** `#!/bin/sh`. Shebang berfungsi untuk memberitahu sistem bahwa perintah-perintah yg ada di dalam file tersebut harus dijalankan oleh Bourne Shell.
3. Simpan dan ubah permission file script agar dapat dieksekusi.
   ```bash
   chmod +x hello-sisop.sh
   ```
4. Eksekusi file script dengan cara `./hello-sisop.sh` atau `bash hello-sisop.sh`.

### 1.4 Shell Variables
* Nama variabel hanya boleh terdiri dari:
  * **Huruf** (a-z dan A-Z)
  * **Angka** (0-9)
  * Karakter **underscore** (_)
  
  Kita tidak bisa menggunakan karakter **!**, **\***, atau **-** karena karakter tersebut punya arti khusus untuk shell.
* Cara mendefinisikan variabel:
    ```bash
    nama_variabel=nilai
    ```
    Contoh:
    ```bash
    mata_kuliah="Sistem Operasi A"
    semester=4
    ```
* Cara mengakses variabel:
    ```bash
    echo $nama_variabel
    ```
    Contoh:
    ```bash
    #!/bin/sh

    mata_kuliah="Sistem Operasi A"
    semester=4

    echo $mata_kuliah
    echo $semester
    ```
* Tipe variabel:

   
### 1.5 Input Output
### 1.6 Quoting Character
### 1.7 Aritmatika
### 1.8 Conditional
### 1.9 Loop
### 1.10 Function atau Subroutine 

## Referensi 
* https://www.tutorialspoint.com/unix/shell_scripting.htm
