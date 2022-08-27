<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>Form Makesta</title>
</head>

<body>

    <div class="container jumbotron text-center">
        <h1>FORMULIR PESERTA </h1>
        <H2>MAKESTA</H2>
        <H3>PIMPINAN RANTING IPNU & IPPNU DESA LOREM</H3>
    </div>
    <!-- <section>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <p>Data Diri</p>
                    <form action="" method="POST">
                        <div class="form-group">
                            <label for="nama">Nama</label>
                            <input type="text" class="form-control" id="nama" placeholder="Masukkan Nama Anda" required>
                        </div>
                        <div class="form-group">
                            <label for="NIK">NIK</label>
                            <input type="number" class="form-control" id="NIK" placeholder="Masukkan NIK Anda" required>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="tempat_lahir">Tempat Lahir</label>
                                    <input type="text" class="form-control" id="tempat_lahir" required>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="tgl_lahir">Tanggal Lahir</label>
                                    <input type="date" class="form-control" id="tgl_lahir" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Jenis Kelamin</label><br>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="jenis_kelamin" id=laki" value="l" checked>
                                <label class="form-check-label" for=laki">
                                    Laki - Laki
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="jenis_kelamin" id="perempuan" value="p">
                                <label class="form-check-label" for="perempuan">
                                    Perempuan
                                </label>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary" name="kirim">Kirim</button>
                    </form>
                </div>
            </div>
        </div>
    </section> -->
    <div class="container" style="width: 300px;">
        <form action="" method="POST">
            <div class="mb-3">
                <label for="nama" class="form-label" required="">Nama</label>
                <input type="text" class="form-control" id="nama" name="nama">
            </div>
            <div class="mb-3">
                <label for="nik" class="form-label" required="">NIK</label>
                <input type="text" class="form-control" id="nik" name="nik">
            </div>
            <div class="mb-3">
                <label for="tempat_lahir" class="form-label" required="">Tempat Lahir</label>
                <input type="text" class="form-control" id="tempat_lahir" name="tempat_lahir">
            </div>
            <div class="mb-3">
                <label for="tgl_lahir" class="form-label" required="">Tanggal Lahir</label>
                <input type="date" class="form-control" id="ttl">
            </div>
            <div class="mb-3">
                <label for="jenis_kelamin" class="form-label" required="">Jenis Kelamin</label> <br>
                <input type="radio" value="laki" id="laki" name="tgl_lahir" required> <label for="laki">Laki - Laki</label>
                <input type="radio" value="perempuan" id="perempuan" name="tgl_lahir" required> <label for="perempuan">perempuan</label>
            </div>
            <div class="mb-3">
                <label for="alamat" class="form-label" required="">Alamat</label>
                <textarea class="form-control" aria-label="With textarea" name="motto"></textarea>
            </div>
            <div class="mb-3">
                <label for="ayah" class="form-label" required="">Nama Ayah</label>
                <input type="text" class="form-control" id="ayah" name="ayah">
            </div>
            <div class="mb-3">
                <label for="ibu" class="form-label" required="">Nama Ibu</label>
                <input type="text" class="form-control" id="ibu" name="ibu">
            </div>
            <div class="mb-3">
                <label for="no_hp" class="form-label" required="">No HP/WA</label>
                <input type="no_hp" class="form-control" id="no_hp" name="no_hp">
            </div>
            <div class="mb-3">
                <label for="hobi" class="form-label" required="">Hobi</label>
                <input type="hobi" class="form-control" id="hobi" name="hobi">
            </div>
            <div class="mb-3">
                <label for="ig" class="form-label" required="">Instagram</label>
                <input type="ig" class="form-control" id="ig" name="ig">
            </div>
            <div class="mb-3">
                <label for="fb" class="form-label" required="">Facebook</label>
                <input type="fb" class="form-control" id="fb" name="fb">
            </div>
            <div class="mb-3">
                <label for="twitter" class="form-label" required="">Twitter</label>
                <input type="twitter" class="form-control" id="twitter" name="twitter">
            </div>
            <br>
            <h3>Data Pendidikan</h3>
            <div class="mb-3">
                <label for="sd" class="form-label" required="">SD/MI</label>
                <input type="sd" class="form-control" id="sd" name="sd">
            </div>
            <div class="mb-3">
                <label for="smp" class="form-label" required="">SMP/MTS</label>
                <input type="smp" class="form-control" id="smp" name="smp">
            </div>
            <div class="mb-3">
                <label for="sma" class="form-label" required="">SMA/SMK/MA</label>
                <input type="sma" class="form-control" id="sma" name="sma">
            </div>
            <div class="mb-3">
                <label for="perguruan_tinggi" class="form-label" required="">Perguruan Tinggi</label>
                <input type="perguruan_tinggi" class="form-control" id="perguruan_tinggi" name="perguruan_tinggi">
            </div>
            <div class="mb-3">
                <label for="pondok" class="form-label" required="">Pondok Pesantren</label>
                <input type="pondok" class="form-control" id="pondok" name="pondok">
            </div>
            <div class="mb-3">
                <label for="motto" class="form-label" required="">Motto Hidup</label>
                <textarea class="form-control" aria-label="With textarea" name="motto"></textarea>
            </div>
            <div class="mb-3">
                <button class="btn btn-primary" type="button">Simpan</button>
            </div>
        </form>
    </div>
</body>

</html>