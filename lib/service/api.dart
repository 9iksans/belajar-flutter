import 'dart:convert';

import 'package:first_app/model/team.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<Team>> getTeams() async {
    var response = await http.get(
        "https://www.thesportsdb.com/api/v1/json/1/search_all_teams.php?l=English%20Premier%20League");

    var json = jsonDecode(response.body);

    var rawTeam = json["teams"];
    var teams = rawTeam
        .map<Team>((team) => Team(team["strTeam"], team["strTeamBadge"]))
        .toList();

    return teams;
  }
}
