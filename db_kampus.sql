USE db_kampus;

CREATE TABLE tbl_guru {
    id_guru VARCHAR(60)  PRIMARY KEY,
    nama_guru TEXT ,
    nip TEXT 
};

CREATE TABLE tbl_kelas {
    id_kelas VARCHAR(60) NOT NULL ,
    kelas TEXT ,
    id_guru VARCHAR(60) NOT NULL ,
    
}