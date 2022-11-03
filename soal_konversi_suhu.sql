SET SERVEROUTPUT ON
CREATE OR REPLACE PROCEDURE c_to_f (c NUMBER) AS
    f NUMBER(5); --variabel untuk menampung nilai fahrenheit
BEGIN
    f := (9/5 * c) + 32; --perhitungan konversi celcius ke fahrenheit
    DBMS_OUTPUT.PUT_LINE('Fahrenheit : ' || f); --menampilkan nilai konversi celcius ke fahrenheit
END c_to_f;

CREATE OR REPLACE PROCEDURE c_to_k (c NUMBER) AS
    k NUMBER(5); --variabel untuk menampung nilai kelvin
BEGIN
    k := c + 273; --perhitungan konversi celcius ke kelvin
    DBMS_OUTPUT.PUT_LINE('Kelvin : ' || k); --menampilkan nilai konversi celcius ke kelvin
END c_to_k;

CREATE OR REPLACE PROCEDURE c_to_r (c NUMBER) AS
    r NUMBER(5); --variabel untuk menampung nilai reamur
BEGIN
    r := 4/5 * c; --perhitungan konversi celcius ke reamur
    DBMS_OUTPUT.PUT_LINE('Reamur : ' || r); --menampilkan nilai konversi celcius ke reamur
END c_to_r;

CREATE OR REPLACE PROCEDURE convert_temp (c NUMBER) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Celcius : ' || c); --menampilkan nilai input celcius
    c_to_f(c); --memanggil procedure c_to_f yang mengonversi nilai celcius ke fahrenheit
    c_to_k(c); --memanggil procedure c_to_k yang mengonversi nilai celcius ke kelvin
    c_to_r(C); --memanggil procedure c_to_r yang mengonversi nilai celcius ke reamur
END convert_temp;

EXECUTE convert_temp(32); --memanggil dan menjalan procedure convert_temp yang mengonversi celcius ke fahrenheit, kelvin, dan reamur
