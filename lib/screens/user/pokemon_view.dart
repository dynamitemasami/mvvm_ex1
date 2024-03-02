import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mvvm_ex1/data/api/http_request.dart';
import 'package:mvvm_ex1/screens/user/pokemon_viewmodel.dart';

import '../../data/model/pokemon.dart';

class TopPage extends HookConsumerWidget {
  const TopPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ref) {
    final notifier = ref.watch(pokemonViewModelProvider);
    final vm = ref.read(pokemonViewModelProvider.notifier);
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          itemCount: notifier.pokemap.values.length,
            itemBuilder: (context, index) {
              return PokeListItem(
                poke: notifier.pokemap.values.toList()[index],
              );
            }        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          await vm.fetchPoke(1);

        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => {

        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          ),
        ],
      ),
    );
  }
}


class PokeListItem extends StatelessWidget {
  const PokeListItem({Key? key, required this.poke}) : super(key: key);
  final Pokemon? poke;
  @override
  Widget build(BuildContext context) {
    if (poke != null) {
      return ListTile(
        leading: Container(
          width: 80,
          decoration: BoxDecoration(
            color: (pokeTypeColors[poke!.types.first] ?? Colors.grey[100])
                ?.withOpacity(.3),
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: NetworkImage(
                poke!.imageUrl,
              ),
            ),
          ),
        ),
        title: Text(
          poke!.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(poke!.types.first),
        trailing: const Icon(Icons.navigate_next),
        onTap: () => {
          /*Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const PokeDetail(),
            ),
          ),*/
        },
      );
    } else {
      return const ListTile(title: Text('...'));
    }
  }
}
const Map<String, Color> pokeTypeColors = {
  "normal": Color(0xFFA8A77A),
  "fire": Color(0xFFEE8130),
  "water": Color(0xFF6390F0),
  "electric": Color(0xFFF7D02C),
  "grass": Color(0xFF7AC74C),
  "ice": Color(0xFF96D9D6),
  "fighting": Color(0xFFC22E28),
  "poison": Color(0xFFA33EA1),
  "ground": Color(0xFFE2BF65),
  "flying": Color(0xFFA98FF3),
  "psychic": Color(0xFFF95587),
  "bug": Color(0xFFA6B91A),
  "rock": Color(0xFFB6A136),
  "ghost": Color(0xFF735797),
  "dragon": Color(0xFF6F35FC),
  "dark": Color(0xFF705746),
  "steel": Color(0xFFB7B7CE),
  "fairy": Color(0xFFD685AD),
};

