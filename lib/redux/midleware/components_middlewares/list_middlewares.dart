import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

/*

Middleware<AppState> createNavigateToPokemonSpecieDetailsView(SkillService skillService){

  return TypedMiddleware((Store<AppState> store,NavigateToPokemonDetailsAction action, NextDispatcher next) async {

            List<Skill?> aux = await skillService.getSkillsByPokemon(action.pokemon.id??0);
            List<Skill> skills = aux.whereType<Skill>().toList();

            StoreProvider.of<AppState>(action.context)
                    .dispatch(UpdatePokemonDetailsSkillsAction(store.state.states.length-1,skills));

            next(action);
          }
      );

}


navigateToPokemonSpecieDetailsView(Store<AppState> store, NavigateToPokemonDetailsAction action, NextDispatcher next){


    StoreProvider.of<AppState>(action.context)
                    .dispatch(CreatePokemonDetailsStateAction());

    Navigator.push(
              action.context,
              MaterialPageRoute(
                          builder: (context) => PokemonDetailScreen(
                                                                    viewNumber:store.state.states.length-1,
                                                                    pokemon: action.pokemon,
                                                                    ),
                        ),

          );
    

    next(action);
    

}*/