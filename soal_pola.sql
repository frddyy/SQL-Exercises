SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE pola1 AS --membuat procedure pola1
    i NUMBER(5); --variabel untuk menampung nilai baris i 
    j NUMBER(5); --variabel untuk menamping nilai kolom j
BEGIN
    FOR i IN 0..9 LOOP --looping untuk nilai i dari indeks 0 sampai 9
        FOR j IN 0..9 LOOP --looping untuk nilai j dari indeks 0 sampai 9
            IF (i=j OR (i+j) = 9) THEN --kondisi pengecekan apakah nilai i sama dengan nilai j atau nilai i ditambah j sama dengan 9
                     DBMS_OUTPUT.PUT(' X'); --jika kondisi terpenuhi maka cetak ' X'
                 ELSE
                     DBMS_OUTPUT.PUT(' *'); --jika kondisi tidak terpenuhi maka cetak ' *'
            END IF;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE(' '); --mencetak ' ' (spasi) ketika looping nilai j selesai
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' '); --mencetak ' ' (spasi) ketika looping nilai i selesai
END;

CREATE OR REPLACE PROCEDURE pola2 AS --membuat procedure pola2
    i NUMBER(5); --variabel untuk menampung nilai baris i 
    j NUMBER(5); --variabel untuk menamping nilai kolom j
BEGIN
    FOR i in 1..10 LOOP --looping untuk nilai i dari indeks 1 sampai 10
      FOR j in 1..10 LOOP --looping untuk nilai j dari indeks 1 sampai 10
        IF (i <= j) THEN --kondisi pengecakan apakah nilai i lebih dari sama dengan j
            IF (i*j < 100) THEN --kondisi pengecekan apakah nilai i dikali nilai j lebih kecil dari 100
                DBMS_OUTPUT.PUT(TO_CHAR(i * j, '00'));  --jika kondisi terpenuhi maka menampilkan nilai i*j dengan dengan format dua digit '00'
            ELSE 
                DBMS_OUTPUT.PUT(TO_CHAR(i * i, '000')); --jika kondisi tidak terpenuhi maka menampilkan nilai i*j dengan format tiga digit '000'
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE(' '); --mencetak ' ' (spasi) ketika looping nilai j selesai
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' '); --mencetak ' ' (spasi) ketika looping nilai i selesai
END;

CREATE OR REPLACE PROCEDURE pola3 AS --membuat procedure pola3
    i NUMBER(5); --variabel untuk menampung nilai baris i 
    j NUMBER(5); --variabel untuk menamping nilai kolom j
BEGIN
    FOR i in 1..10 LOOP --looping untuk nilai i dari indeks 1 sampai 10
      FOR j in 1..10 LOOP --looping untuk nilai j dari indeks 1 sampai 10
        IF (i>=j) THEN --kondisi pengecekan apakah nilai nilai i lebih besar sama dengan nilai j
            IF (i * j MOD 2 != 0) THEN --kondisi pengecekan apakah i*j mod 2 tidak sama dengan 0 (bilangan ganjil)
                DBMS_OUTPUT.PUT(' 1'); --jika kondisi terpenuhi maka cetak '1'
            ELSE 
                DBMS_OUTPUT.PUT(' 0'); --jika kondisi tidak terpenuhi maka cetak '0'
            END IF;
        END IF;
      END LOOP;
      DBMS_OUTPUT.PUT_LINE(''); --mencetak ' ' (spasi) ketika looping nilai j selesai
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' '); --mencetak ' ' (spasi) ketika looping nilai i selesai
END;

EXECUTE pola1; --memanggil dan menjalankan procedure pola1
EXECUTE pola2; --memanggil dan menjalankan procedure pola2
EXECUTE pola3; --memanggil dan menjalankan procedure pola3
