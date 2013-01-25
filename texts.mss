
.text {
  [place = 'island'][zoom >= 12]::place {
    text-name: "[name]";
    text-fill: #000;
    text-size: 9;
    text-face-name: @oblique-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'pub']::amenity,
  [amenity = 'restaurant']::amenity,
  [amenity = 'cafe']::amenity,
  [amenity = 'fast_food']::amenity,
  [amenity = 'beirgarten']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-fill: #734a08;
      text-size: 10;
      text-dy: 9;
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-wrap-width: 34;
      text-placement: interior;
    }
  }

  [amenity = 'bar'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 11;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'library']::amenity,
  [amenity = 'theatre']::amenity,
  [amenity = 'courthouse']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #734a08;
      text-dy: 12;
      text-face-name: @bold-fonts;
      text-halo-radius: 1;
      text-placement: interior;
    }
  }

  [amenity = 'cinema'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 14;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'parking'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 34;
    text-placement: interior;
    [access != ''][access != 'public'][access != 'yes'] {
      text-fill: #66ccaf;
    }
  }

  [amenity = 'police'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [amenity = 'fire_station'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [amenity = 'place_of_worship'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000033;
    text-dy: 11;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
  }

  [natural = 'wood'][zoom >= 15]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #000;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [natural = 'peak']::natural,
  [natural = 'volcano']::natural {
    [zoom >= 13] {
      text-name: "[name]";
      text-size: 10;
      text-fill: brown;
      text-dy: 5;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-placement: interior;
      ele/text-name: "[ele]";
      ele/text-size: 9;
      ele/text-fill: brown;
      ele/text-dy: 6;
      ele/text-face-name: @oblique-fonts;
      ele/text-halo-radius: 1;
      ele/text-placement: interior;
      [name != ''] {
        ele/text-dy: 18;
      }
    }
  }

  [natural = 'cave_entrance'][zoom >= 15]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: brown;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [historic = 'memorial']::historic,
  [historic = 'archaeological_site']::historic {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: brown;
      text-dy: 12;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  [natural = 'water']::natural,
  [natural = 'lake']::natural,
  [landuse = 'reservoir']::landuse,
  [landuse = 'basin']::landuse {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #6699cc;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  /* Hmmm */
  [point = 'yes'][leisure != '']::point,
  [point = 'yes'][landuse != '']::point {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000;
      text-face-name: @book-fonts;
      text-halo-radius: 2;
      text-wrap-width: 10;
    }
  }

  [natural = 'bay'][zoom >= 14]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [natural = 'spring'][zoom >= 16]::natural {
    text-name: "[name]";
    text-size: 10;
    text-fill: #6699cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }
  [tourism = 'wilderness_hut']::tourism,
  [tourism = 'alpine_hut']::tourism {
    [zoom >= 15] {
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
      [zoom >= 16] {
        ele/text-name: "[ele]";
        ele/text-size: 8;
        ele/text-fill: #6699cc;
        ele/text-dy: 22;
        ele/text-face-name: @oblique-fonts;
        ele/text-halo-radius: 1;
        ele/text-placement: interior;
      }
    }
  }

  [amenity = 'shelter'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #6699cc;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
    ele/text-name: "[ele]";
    ele/text-size: 8;
    ele/text-fill: #6699cc;
    ele/text-dy: 22;
    ele/text-face-name: @oblique-fonts;
    ele/text-halo-radius: 1;
    ele/text-placement: interior;
  }

  [amenity = 'bank'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: black;
    text-dy: 9;
    text-halo-radius: 1;
    text-placement: interior;
    text-face-name: @book-fonts;
  }

  [tourism = 'hotel']::tourism,
  [tourism = 'hostel']::tourism,
  [tourism = 'chalet']::tourism {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 10;
      text-fill: #0066ff;
      text-dy: 11;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-placement: interior;
    }
  }

  [amenity = 'embassy'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #0066ff;
    text-dy: 8;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'guest_house'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 9;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'bed_and_breakfast'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #0066ff;
    text-dy: 7;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'fuel']::amenity,
  [amenity = 'bus_station']::amenity {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #0066ff;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }

  [tourism = 'camp_site'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 15;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [tourism = 'caravan_site'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #0066ff;
    text-dy: 19;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [waterway = 'lock'][zoom >= 15]::waterway {
    text-name: "[name]";
    text-size: 9;
    text-dy: 10;
    text-fill: #0066ff;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 70;
  }

  [leisure = 'marina'][zoom >= 15]::leisure {
    text-name: "[name]";
    text-size: 8;
    text-fill: blue;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
    [zoom >= 17] {
      text-size: 10;
    }
  }

  [tourism = 'theme_park'][zoom >= 14]::tourism {
    text-name: "[name]";
    text-size: 8;
    text-fill: #734a08;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 30;
    text-placement: interior;
    [zoom >= 16] {
      text-size: 10;
    }
  }

  [tourism = 'museum'][zoom >= 17]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-dy: 10;
    text-fill: #734a08;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [amenity = 'prison'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 10;
    text-fill: #734a08;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-placement: interior;
  }

  [tourism = 'attraction'][zoom >= 16]::tourism {
    text-name: "[name]";
    text-size: 10;
    text-fill: #660033;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [amenity = 'university'][zoom >= 15]::amenity {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000033;
    text-face-name: @bold-fonts;
    text-halo-radius: 2;
    text-wrap-width: 16;
    text-placement: interior;
  }

  [amenity = 'school']::amenity,
  [amenity = 'college']::amenity {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #000033;
      text-face-name: @book-fonts;
      text-halo-radius: 2;
      text-wrap-width: 14;
      text-placement: interior;
    }
  }

  [amenity = 'kindergarten'][zoom >= 16]::amenity {
    text-name: "[name]";
    text-size: 8;
    text-fill: #000033;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 14;
    text-placement: interior;
  }

  [man_made = 'lighthouse'][zoom >= 15]::man_made {
    text-name: "[name]";
    text-size: 9;
    text-fill: #000033;
    text-dy: 16;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 12;
    text-placement: interior;
  }

  [man_made = 'windmill'][zoom >= 17]::man_made {
    text-name: "[name]";
    text-size: 9;
    text-fill: #734a08;
    text-dy: 12;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 20;
    text-placement: interior;
  }

  [amenity = 'hospital'][zoom >= 16]::amenity {
    text-name: "[name]";
    text-fill: #da0092;
    text-size: 8;
    text-dy: 10;
    text-face-name: @book-fonts;
    text-halo-radius: 2;
    text-wrap-width: 24;
    text-placement: interior;
  }

  [amenity = 'pharmacy'][zoom >= 17]::amenity {
    text-name: "[name]";
    text-size: 8;
    text-dy: 9;
    text-fill: #da0092;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 12;
    text-placement: interior;
  }

  [shop = 'bakery']::shop,
  [shop = 'clothes']::shop,
  [shop = 'fashion']::shop,
  [shop = 'convenience']::shop,
  [shop = 'doityourself']::shop,
  [shop = 'hairdresser']::shop,
  [shop = 'butcher']::shop,
  [shop = 'car']::shop,
  [shop = 'car_repair']::shop,
  [shop = 'bicycle']::shop,
  [shop = 'florist']::shop {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 8;
      text-dy: 9;
      text-fill: #939;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 12;
      text-placement: interior;
    }
  }

  [shop = 'supermarket']::shop,
  [shop = 'department_store']::shop {
    [zoom >= 16] {
      text-name: "[name]";
      text-size: 9;
      text-dy: 9;
      text-fill: #939;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
      text-wrap-width: 20;
      text-placement: interior;
    }
  }

  [military = 'danger_area'][zoom >= 12]::military {
    text-name: "[name]";
    text-size: 9;
    text-fill: pink;
    text-face-name: @bold-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }

  [aeroway = 'gate'][zoom >= 17]::aeroway {
    text-name: "[ref]";
    text-size: 10;
    text-fill: #aa66cc;
    text-face-name: @book-fonts;
    text-halo-radius: 1;
    text-wrap-width: 10;
    text-placement: interior;
  }
}