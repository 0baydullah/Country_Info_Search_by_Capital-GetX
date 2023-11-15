
import 'dart:convert';

List<CapitalModel> capitalModelFromJson(String str) => List<CapitalModel>.from(json.decode(str).map((x) => CapitalModel.fromJson(x)));

String capitalModelToJson(List<CapitalModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CapitalModel {
  Name? name;
  List<String>? tld;
  String? cca2;
  String? ccn3;
  String? cca3;
  String? cioc;
  bool? independent;
  String? status;
  bool? unMember;
  Currencies? currencies;
  Idd? idd;
  List<String>? capital;
  List<String>? altSpellings;
  String? region;
  String? subregion;
  Languages? languages;
  Translations? translations;
  List<int>? latlng;
  bool? landlocked;
  List<String>? borders;
  dynamic area;
  Demonyms? demonyms;
  String? flag;
  Maps? maps;
  dynamic population;
  Gini? gini;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;
  CapitalInfo? capitalInfo;
  PostalCode? postalCode;

  CapitalModel({
    this.name,
    this.tld,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.currencies,
    this.idd,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.demonyms,
    this.flag,
    this.maps,
    this.population,
    this.gini,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
    this.capitalInfo,
    this.postalCode,
  });

  factory CapitalModel.fromJson(Map<String, dynamic> json) => CapitalModel(
    name: json["name"] == null ? null : Name.fromJson(json["name"]),
    tld: json["tld"] == null ? [] : List<String>.from(json["tld"]!.map((x) => x)),
    cca2: json["cca2"],
    ccn3: json["ccn3"],
    cca3: json["cca3"],
    cioc: json["cioc"],
    independent: json["independent"],
    status: json["status"],
    unMember: json["unMember"],
    currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
    idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
    capital: json["capital"] == null ? [] : List<String>.from(json["capital"]!.map((x) => x)),
    altSpellings: json["altSpellings"] == null ? [] : List<String>.from(json["altSpellings"]!.map((x) => x)),
    region: json["region"],
    subregion: json["subregion"],
    languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
    translations: json["translations"] == null ? null : Translations.fromJson(json["translations"]),
    landlocked: json["landlocked"],
    borders: json["borders"] == null ? [] : List<String>.from(json["borders"]!.map((x) => x)),
    area: json["area"],
    demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
    flag: json["flag"],
    maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
    population: json["population"],
    gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
    fifa: json["fifa"],
    car: json["car"] == null ? null : Car.fromJson(json["car"]),
    timezones: json["timezones"] == null ? [] : List<String>.from(json["timezones"]!.map((x) => x)),
    continents: json["continents"] == null ? [] : List<String>.from(json["continents"]!.map((x) => x)),
    flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
    coatOfArms: json["coatOfArms"] == null ? null : CoatOfArms.fromJson(json["coatOfArms"]),
    startOfWeek: json["startOfWeek"],
    capitalInfo: json["capitalInfo"] == null ? null : CapitalInfo.fromJson(json["capitalInfo"]),
    postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name?.toJson(),
    "tld": tld == null ? [] : List<dynamic>.from(tld!.map((x) => x)),
    "cca2": cca2,
    "ccn3": ccn3,
    "cca3": cca3,
    "cioc": cioc,
    "independent": independent,
    "status": status,
    "unMember": unMember,
    "currencies": currencies?.toJson(),
    "idd": idd?.toJson(),
    "capital": capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
    "altSpellings": altSpellings == null ? [] : List<dynamic>.from(altSpellings!.map((x) => x)),
    "region": region,
    "subregion": subregion,
    "languages": languages?.toJson(),
    "translations": translations?.toJson(),
    "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
    "landlocked": landlocked,
    "borders": borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
    "area": area,
    "demonyms": demonyms?.toJson(),
    "flag": flag,
    "maps": maps?.toJson(),
    "population": population,
    "gini": gini?.toJson(),
    "fifa": fifa,
    "car": car?.toJson(),
    "timezones": timezones == null ? [] : List<dynamic>.from(timezones!.map((x) => x)),
    "continents": continents == null ? [] : List<dynamic>.from(continents!.map((x) => x)),
    "flags": flags?.toJson(),
    "coatOfArms": coatOfArms?.toJson(),
    "startOfWeek": startOfWeek,
    "capitalInfo": capitalInfo?.toJson(),
    "postalCode": postalCode?.toJson(),
  };
}

class CapitalInfo {
  List<double>? latlng;

  CapitalInfo({
    this.latlng,
  });

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
    latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
  );

  Map<String, dynamic> toJson() => {
    "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
  };
}

class Car {
  List<String>? signs;
  String? side;

  Car({
    this.signs,
    this.side,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    signs: json["signs"] == null ? [] : List<String>.from(json["signs"]!.map((x) => x)),
    side: json["side"],
  );

  Map<String, dynamic> toJson() => {
    "signs": signs == null ? [] : List<dynamic>.from(signs!.map((x) => x)),
    "side": side,
  };
}

class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
    png: json["png"],
    svg: json["svg"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
  };
}

class Currencies {
  Inr? inr;

  Currencies({
    this.inr,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
    inr: json["INR"] == null ? null : Inr.fromJson(json["INR"]),
  );

  Map<String, dynamic> toJson() => {
    "INR": inr?.toJson(),
  };
}

class Inr {
  String? name;
  String? symbol;

  Inr({
    this.name,
    this.symbol,
  });

  factory Inr.fromJson(Map<String, dynamic> json) => Inr(
    name: json["name"],
    symbol: json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "symbol": symbol,
  };
}

class Demonyms {
  Eng? eng;
  Eng? fra;

  Demonyms({
    this.eng,
    this.fra,
  });

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
    eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
    fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng?.toJson(),
    "fra": fra?.toJson(),
  };
}

class Eng {
  String? f;
  String? m;

  Eng({
    this.f,
    this.m,
  });

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
    f: json["f"],
    m: json["m"],
  );

  Map<String, dynamic> toJson() => {
    "f": f,
    "m": m,
  };
}

class Flags {
  String? png;
  String? svg;
  String? alt;

  Flags({
    this.png,
    this.svg,
    this.alt,
  });

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
    png: json["png"],
    svg: json["svg"],
    alt: json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "png": png,
    "svg": svg,
    "alt": alt,
  };
}

class Gini {
  double? the2011;

  Gini({
    this.the2011,
  });

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
    the2011: json["2011"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "2011": the2011,
  };
}

class Idd {
  String? root;
  List<String>? suffixes;

  Idd({
    this.root,
    this.suffixes,
  });

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
    root: json["root"],
    suffixes: json["suffixes"] == null ? [] : List<String>.from(json["suffixes"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "root": root,
    "suffixes": suffixes == null ? [] : List<dynamic>.from(suffixes!.map((x) => x)),
  };
}

class Languages {
  String? eng;
  String? hin;
  String? tam;

  Languages({
    this.eng,
    this.hin,
    this.tam,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
    eng: json["eng"],
    hin: json["hin"],
    tam: json["tam"],
  );

  Map<String, dynamic> toJson() => {
    "eng": eng,
    "hin": hin,
    "tam": tam,
  };
}

class Maps {
  String? googleMaps;
  String? openStreetMaps;

  Maps({
    this.googleMaps,
    this.openStreetMaps,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
    googleMaps: json["googleMaps"],
    openStreetMaps: json["openStreetMaps"],
  );

  Map<String, dynamic> toJson() => {
    "googleMaps": googleMaps,
    "openStreetMaps": openStreetMaps,
  };
}

class Name {
  String? common;
  String? official;
  NativeName? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: json["nativeName"] == null ? null : NativeName.fromJson(json["nativeName"]),
  );

  Map<String, dynamic> toJson() => {
    "common": common,
    "official": official,
    "nativeName": nativeName?.toJson(),
  };
}

class NativeName {
  Ara? eng;
  Ara? hin;
  Ara? tam;

  NativeName({
    this.eng,
    this.hin,
    this.tam,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
    eng: json["eng"] == null ? null : Ara.fromJson(json["eng"]),
    hin: json["hin"] == null ? null : Ara.fromJson(json["hin"]),
    tam: json["tam"] == null ? null : Ara.fromJson(json["tam"]),
  );

  Map<String, dynamic> toJson() => {
    "eng": eng?.toJson(),
    "hin": hin?.toJson(),
    "tam": tam?.toJson(),
  };
}

class Ara {
  String? official;
  String? common;

  Ara({
    this.official,
    this.common,
  });

  factory Ara.fromJson(Map<String, dynamic> json) => Ara(
    official: json["official"],
    common: json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official,
    "common": common,
  };
}

class PostalCode {
  String? format;
  String? regex;

  PostalCode({
    this.format,
    this.regex,
  });

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
    format: json["format"],
    regex: json["regex"],
  );

  Map<String, dynamic> toJson() => {
    "format": format,
    "regex": regex,
  };
}

class Translations {
  Ara? ara;
  Ara? bre;
  Ara? ces;
  Ara? cym;
  Ara? deu;
  Ara? est;
  Ara? fin;
  Ara? fra;
  Ara? hrv;
  Ara? hun;
  Ara? ita;
  Ara? jpn;
  Ara? kor;
  Ara? nld;
  Ara? per;
  Ara? pol;
  Ara? por;
  Ara? rus;
  Ara? slk;
  Ara? spa;
  Ara? srp;
  Ara? swe;
  Ara? tur;
  Ara? urd;
  Ara? zho;

  Translations({
    this.ara,
    this.bre,
    this.ces,
    this.cym,
    this.deu,
    this.est,
    this.fin,
    this.fra,
    this.hrv,
    this.hun,
    this.ita,
    this.jpn,
    this.kor,
    this.nld,
    this.per,
    this.pol,
    this.por,
    this.rus,
    this.slk,
    this.spa,
    this.srp,
    this.swe,
    this.tur,
    this.urd,
    this.zho,
  });

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
    ara: json["ara"] == null ? null : Ara.fromJson(json["ara"]),
    bre: json["bre"] == null ? null : Ara.fromJson(json["bre"]),
    ces: json["ces"] == null ? null : Ara.fromJson(json["ces"]),
    cym: json["cym"] == null ? null : Ara.fromJson(json["cym"]),
    deu: json["deu"] == null ? null : Ara.fromJson(json["deu"]),
    est: json["est"] == null ? null : Ara.fromJson(json["est"]),
    fin: json["fin"] == null ? null : Ara.fromJson(json["fin"]),
    fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
    hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
    hun: json["hun"] == null ? null : Ara.fromJson(json["hun"]),
    ita: json["ita"] == null ? null : Ara.fromJson(json["ita"]),
    jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
    kor: json["kor"] == null ? null : Ara.fromJson(json["kor"]),
    nld: json["nld"] == null ? null : Ara.fromJson(json["nld"]),
    per: json["per"] == null ? null : Ara.fromJson(json["per"]),
    pol: json["pol"] == null ? null : Ara.fromJson(json["pol"]),
    por: json["por"] == null ? null : Ara.fromJson(json["por"]),
    rus: json["rus"] == null ? null : Ara.fromJson(json["rus"]),
    slk: json["slk"] == null ? null : Ara.fromJson(json["slk"]),
    spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
    srp: json["srp"] == null ? null : Ara.fromJson(json["srp"]),
    swe: json["swe"] == null ? null : Ara.fromJson(json["swe"]),
    tur: json["tur"] == null ? null : Ara.fromJson(json["tur"]),
    urd: json["urd"] == null ? null : Ara.fromJson(json["urd"]),
    zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
  );

  Map<String, dynamic> toJson() => {
    "ara": ara?.toJson(),
    "bre": bre?.toJson(),
    "ces": ces?.toJson(),
    "cym": cym?.toJson(),
    "deu": deu?.toJson(),
    "est": est?.toJson(),
    "fin": fin?.toJson(),
    "fra": fra?.toJson(),
    "hrv": hrv?.toJson(),
    "hun": hun?.toJson(),
    "ita": ita?.toJson(),
    "jpn": jpn?.toJson(),
    "kor": kor?.toJson(),
    "nld": nld?.toJson(),
    "per": per?.toJson(),
    "pol": pol?.toJson(),
    "por": por?.toJson(),
    "rus": rus?.toJson(),
    "slk": slk?.toJson(),
    "spa": spa?.toJson(),
    "srp": srp?.toJson(),
    "swe": swe?.toJson(),
    "tur": tur?.toJson(),
    "urd": urd?.toJson(),
    "zho": zho?.toJson(),
  };
}
