class Kopi {
  String name;
  String deskripsi;
  String jenis;
  String image;
  List<String> imageAsset;

  Kopi({
    required this.name,
    required this.deskripsi,
    required this.jenis,
    required this.image,
    required this.imageAsset
  });
}
var KopiList = [
  Kopi(
      name: "Bali Kintamani",
      deskripsi: "Kintamani is a district, and a village within that district, on the western edge of the larger caldera wall of the Mount Batur caldera in Bali, Indonesia. It is on the same north–south road as Penelokan and has been used as a stopping place to view the Mount Batur region.",
      jenis: "Arabica",
      image: "https://i2.wp.com/tamandelta.com/wp-content/uploads/2020/03/Taste-Notes-Kopi-Bali-Kintamani.png?fit=510%2C510&ssl=1",
      imageAsset: [
        "https://i2.wp.com/tamandelta.com/wp-content/uploads/2020/03/Taste-Notes-Kopi-Bali-Kintamani.png?fit=510%2C510&ssl=1",
        "https://i2.wp.com/tamandelta.com/wp-content/uploads/2020/03/Taste-Notes-Kopi-Bali-Kintamani.png?fit=510%2C510&ssl=1",
        "https://i2.wp.com/tamandelta.com/wp-content/uploads/2020/03/Taste-Notes-Kopi-Bali-Kintamani.png?fit=510%2C510&ssl=1",
        "https://i2.wp.com/tamandelta.com/wp-content/uploads/2020/03/Taste-Notes-Kopi-Bali-Kintamani.png?fit=510%2C510&ssl=1"
      ]
  ),
  Kopi(
      name: "Aceh Gayo Anaerob Natural",
      deskripsi: "Untuk setiap bubuk kopi single origin yang dijual di Otten Coffee, semuanya digiling dengan memakai mesin penggiling Mahlkonig VTA 6S. Mesin ini memiliki conical burr yang terkenal dengan hasil gilingan yang presisi di setiap partikel gilingannya. Karenanya, kini para pelanggan setia Otten Coffee bisa memilih berbagai rentang pilihan level gilingan sesuai dengan kebutuhan masing-masing, mulai dari super fine hingga coarse.",
      jenis: "Arabica",
      image: "https://s-ecom.ottenstatic.com/original/608670e7ab7fd470858457.jpg",
      imageAsset: [
        "https://s-ecom.ottenstatic.com/original/608670e7ab7fd470858457.jpg",
        "https://s-ecom.ottenstatic.com/original/608670e7ab7fd470858457.jpg",
        "https://s-ecom.ottenstatic.com/original/608670e7ab7fd470858457.jpg",
        "https://s-ecom.ottenstatic.com/original/608670e7ab7fd470858457.jpg"
      ]
  )
];