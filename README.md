### Modul 1 Sistem Operasi
# Shell Scripting dan AWK

## Syarat Mengikuti Modul
1. Linux OS 
2. CLI (Command Line Interface)

n.b. Untuk penyegaran kembali terkait CLI, silahkan membaca [Modul Pengenalan CLI](https://github.com/raldokusuma/modul-pengenalan-CLI)
  
## Tujuan
1. Praktikan mengetahui konsep dasar shell dan shell scripting
2. Praktikan memahami tujuan dan manfaat dari shell scripting
3. Praktikan memahami bagaimana cara menulis shell script

## Daftar Isi


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
* **Shell scripting** adalah sebuah kegiatan menulis serangkaian perintah untuk dieksekusi oleh Shell. Konsep dasarnya sederhana, yaitu sebuah file yang berisi serangkaian perintah (Linux commands) yang ditulis berdasarkan urutan eksekusinya. 
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
    * Integer
        ```bash
        nama_var=nilai
        ```
    * String
        ```bash
        nama_var="string"
        ```
    * Array
        ```bash
        nama_var=(arr0 arr1 arr2)
        ```
* Read Only Variables
* Unsetting Variables
* Special Variables
  
### 1.5 Input Output
* Untuk menampilkan teks atau isi dari variable (output) menggunakan fungsi **echo** dengan syntax berikut:
    ```bash
    echo "teks"
    echo $var
    ```
* Untuk memasukkan isi variable (input) menggunakan fungsi **read** dengan syntax berikut:
    ```bash
    read var1
    ```

### 1.6 Quoting Mechanism
* Unix Shell memiliki beberapa karakter khusus shell yang disebut dengan **metakarakter**. Karakter tersebut punya arti khusus jika digunakan di dalam shell script. Beberapa jenis metakarakter:
    ```bash
    * ? [ ] ' " \ $ ; & ( ) | ^ < > new-line space tab
    ```
* Ada 4 jenis **quoting**, yaitu:
    | No | Quoting | Deskripsi|
    |---|---|---|
    | 1 | Single Quotes (') | Semua metakarakter di antara single quotes akan kehilangan makna khusus |
    | 2 | Double Quotes (") | Sebagian besar metakarakter di antara double quotes akan kehilangan makna khusus, kecuali `$, backquotes, \$, \', \", \\` |
    | 3 | Backslash (\\) | Karakter apa pun setelah backslash akan kehilangan makna khusus |
    | 4 | Backquotes (`) | Apa pun di antara back quote akan diperlakukan sebagai perintah dan akan dieksekusi |

#### Single Quotes dan Backslash
Misalnya, kita harus menampilkan output berupa teks yang memiliki banyak karakter khusus, seperti dibawah:
```
<Level 2: $1500>; (update?) [y|n]
```
Jika ditulis menggunakan backslash begini akan susah dibaca
```bash
echo \<Level 2: \$1500\>\; \(update\?\) \[y\|n\]
```
Oleh karena itu, kita dapat menggunakan single quotes untuk mengutip teks tersebut
```bash
echo '<Level 2: $1500>; (update?) [y|n]'
```

#### Double Quotes
* Contoh
#### Backquotes
* Syntax
    ```bash
    var=`command`
    ```
* Contoh
    ```bash
    date=`date`

    echo "Hari ini: $date"
    ```

### 1.7 Operator Dasar
* Ada beberapa jenis operator yang didukung oleh bourne shell, yaitu:
  1. Operator Aritmatika
  2. Operator Relasional
  3. Operator Boolean
  4. Operator String
  5. Operator File Test

    Namun yang akan dibahas lebih jauh hanyalah operator **aritmatika** dan **relasional**.
* Bourne shell tidak memiliki mekanisme sendiri untuk melakukan operasi aritmatika sederhana, sehingga harus menggunakan program eksternal, yaitu **awk** atau **expr**.

#### Operator Aritmatika

| No | Operator | Deskripsi | 
|---|---|---|
| 1 | + | Penjumlahan | 
| 2 | - | Pengurangan | 
| 3 | * | Perkalian |
| 4 | / | Pembagian |
| 5 | % | Modulus (sisa pembagian) | 
| 6 | = | Menempatkan nilai di sisi kanan ke variabel di sisi kiri |
| 7 | == | Membandingkan 2 nilai yang sama. Jika nilainya sama maka **True** |
| 8 | != | Membandingkan 2 nilai yang tidak sama. Jika nilainya tidak sama maka **True** |

Contoh:
```bash
ini contoh
```
#### Operator Relasional

| No | Operator | Deskripsi | 
|---|---|---|
| 1 | -eq | Memeriksa apakah nilai kedua operan sama (==) |
| 2 | -ne | Memeriksa apakah nilai kedua operan tidak sama (!=) |
| 3 | -gt | Memeriksa apakah nilai operan kiri lebih besar daripada operan kanan (>) |
| 4 | -lt | Memeriksa apakah nilai operan kiri lebih kecil daripada operan kanan (<)  |
| 5 | -ge | Memeriksa apakah nilai operan kiri lebih besar atau sama dengan operan kanan (>=) |
| 6 | -le | Memeriksa apakah nilai operan kiri lebih kecil atau sama dengan operan kanan (<=) |

Contoh:
```bash
ini contoh
```
### 1.8 Conditional Statements
* **Conditional statements** digunakan untuk memungkinkan program dapat membuat keputusan yang benar dengan memilih tindakan tertentu berdasarkan syarat/kondisi tertentu.
* Ada 2 jenis conditional statements dalam Unix shell, yaitu:
  1. **if...else**
  2. **case...esac**
#### If...Else
* Syntax:
    ```bash
    if [ kondisi 1 ]
        then 
            tindakan 1 dieksekusi jika kondisi 1 benar
    elif [ kondisi 2 ]
        then
            tindakan 2 dieksekusi jika kondisi 2 benar
    else
        tindakan 3 dieksekusi jika tidak ada kondisi yang benar
    fi
    ```
* Contoh:

#### Case...Esac
* Syntax:
    ```bash
    case variabel in
        pola 1)
            tindakan 1 dieksekusi jika pola 1 cocok
            ;;
        pola 2)
            tindakan 2 dieksekusi jika pola 2 cocok
            ;;
        pola 3)
            tindakan 3 dieksekusi jika pola 3 cocok
            ;;
        *)
            tindakan 4 akan dieksekusi jika tidak ada pola yang cocok
            ;;
    esac
    ```
* Contoh:


### 1.9 Loop

### 1.10 Function atau Subroutine 

## Referensi 
* https://www.tutorialspoint.com/unix/shell_scripting.htm
