
import 'package:flutter/material.dart';

class ColorsModel {
    int? id;
    String? title;
    String? userName;
    int? numViews;
    int? numVotes;
    int? numComments;
    int? numHearts;
    int? rank;
    String? dateCreated;
    String? hex;
    Rgb? rgb;
    Hsv? hsv;
    String? description;
    String? url;
    String? imageUrl;
    String? badgeUrl;
    String? apiUrl;

    ColorsModel({this.id, this.title, this.userName, this.numViews, this.numVotes, this.numComments, this.numHearts, this.rank, this.dateCreated, this.hex, this.rgb, this.hsv, this.description, this.url, this.imageUrl, this.badgeUrl, this.apiUrl});

    ColorsModel.fromJson(Map<String, dynamic> json) {
        id = json["id"];
        title = json["title"];
        userName = json["userName"];
        numViews = json["numViews"];
        numVotes = json["numVotes"];
        numComments = json["numComments"];
        numHearts = json["numHearts"];
        rank = json["rank"];
        dateCreated = json["dateCreated"];
        hex = json["hex"];
        rgb = json["rgb"] == null ? null : Rgb.fromJson(json["rgb"]);
        hsv = json["hsv"] == null ? null : Hsv.fromJson(json["hsv"]);
        description = json["description"];
        url = json["url"];
        imageUrl = json["imageUrl"];
        badgeUrl = json["badgeUrl"];
        apiUrl = json["apiUrl"];
    }

    static List<ColorsModel> ? ofColors (List ofData){
        return ofData.map((e) => ColorsModel.fromJson(e)).toList();
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["id"] = id;
        _data["title"] = title;
        _data["userName"] = userName;
        _data["numViews"] = numViews;
        _data["numVotes"] = numVotes;
        _data["numComments"] = numComments;
        _data["numHearts"] = numHearts;
        _data["rank"] = rank;
        _data["dateCreated"] = dateCreated;
        _data["hex"] = hex;
        if(rgb != null) {
            _data["rgb"] = rgb?.toJson();
        }
        if(hsv != null) {
            _data["hsv"] = hsv?.toJson();
        }
        _data["description"] = description;
        _data["url"] = url;
        _data["imageUrl"] = imageUrl;
        _data["badgeUrl"] = badgeUrl;
        _data["apiUrl"] = apiUrl;
        return _data;
    }
}

class Hsv {
    int? hue;
    int? saturation;
    int? value;

    Hsv({this.hue, this.saturation, this.value});

    Hsv.fromJson(Map<String, dynamic> json) {
        hue = json["hue"];
        saturation = json["saturation"];
        value = json["value"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["hue"] = hue;
        _data["saturation"] = saturation;
        _data["value"] = value;
        return _data;
    }
}

class Rgb {
    int? red;
    int? green;
    int? blue;

    Rgb({this.red, this.green, this.blue});

    Rgb.fromJson(Map<String, dynamic> json) {
        red = json["red"];
        green = json["green"];
        blue = json["blue"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> _data = <String, dynamic>{};
        _data["red"] = red;
        _data["green"] = green;
        _data["blue"] = blue;
        return _data;
    }
}