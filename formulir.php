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
    <div class="container">
        <form action="" method="POST">
            <label for="nama">Nama</label> <input type="text" name="nama" required><br>
            <label for="NIK">NIK</label> <input type="text" name="NIK" required><br>
            <label for="tempat_lahir">tempat_lahir</label><input type="text" name="tempat_lahir" required><br>
            <label for="tgl_lahir">tgl_lahir</label><input type="date" name="tgl_lahir" required><br>
            <article>Jenis Kelamin</article>
            <input type="radio" value="laki" id="laki" name="tgl_lahir" required> <label for="laki">Laki - Laki</label>
            <input type="radio" value="perempuan" id="perempuan" name="tgl_lahir" required> <label for="perempuan">perempuan</label><br>
            <label for="alamat">alamat</label><textarea name="alamat" id="alamat" cols="30" rows="10"></textarea><br>
            <article>Nama ortu</article>
            <label for="ayah">ayah</label> <input type="text" name="ayah" required><br>
            <label for="ibu">ibu</label> <input type="text" name="ayah" required><br>
            <label for="no_hp">no_hp</label> <input type="text" name="ayah" required><br>
            <label for="hobi">hobi</label> <input type="text" name="hobi" required><br>
            <label for="ig">instagram</label> <input type="text" name="ig"><br>
            <label for="fb">facebook</label> <input type="text" name="fb"><br>
            <label for="twitter">instagram</label> <input type="text" name="twitter"><br>
            <br>
            <h3>Data Pendidikan</h3>
            <label for="sd">Sekolah Dasar</label> <input type="text" name="sd" required><br>
            <label for="sltp">Smp/Mts</label> <input type="text" name="sltp" required><br>
            <label for="slta">Smk/Sma/MA</label> <input type="text" name="slta"><br>
            <label for="pt">perguruan tinggi</label> <input type="text" name="pt"><br>
            <label for="pp">pondok pesantren</label> <input type="text" name="pp"><br>
            <label for="mh">Motto Hidup</label> <input type="text" name="mh"><br>
        </form>
    </div>
</body>

</html>