-- File: schema.sql

CREATE DATABASE db_ketahanan_pangan;
USE db_ketahanan_pangan;

CREATE TABLE data_desa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tahun INT NOT NULL,
    jumlah_desa INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE hasil_simulasi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tahun_prediksi INT NOT NULL,
    hasil_prediksi INT NOT NULL,
    probabilitas_naik FLOAT,
    probabilitas_turun FLOAT,
    probabilitas_stabil FLOAT,
    intervals JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert initial data
INSERT INTO data_desa (tahun, jumlah_desa) VALUES 
(2021, 25),
(2022, 20),
(2023, 19),
(2024, 14);
