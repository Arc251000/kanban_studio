
import "package:flutter/material.dart";
import "package:kanban_studio/redux/actions/components_actions/main_navigation_actions.dart";
import "package:kanban_studio/redux/app_state.dart";
import "package:kanban_studio/redux/service/news_service.dart";
import "package:kanban_studio/redux/service/project_service.dart";
import "package:kanban_studio/screens/home.dart";
import "package:kanban_studio/screens/notification_screen.dart";
import "package:kanban_studio/screens/project_screen.dart";
import "package:redux/redux.dart";








navigateToHome(Store<AppState> store,NavigateToHomeAction action, NextDispatcher next) async {
  
  Navigator.push(
      action.context,
       MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),

  );

  action.news = await getNews(0);


  next(action);

}


navigateToNotificationScreen(Store<AppState> store,NavigateToNotificationScreenAction action, NextDispatcher next){
  
  Navigator.push(
      action.context,
       MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),

  );


  next(action);

}


navigateToProjectsScreen(Store<AppState> store,NavigateToProjectsScreenAction action, NextDispatcher next) async {
  
  Navigator.push(
      action.context,
       MaterialPageRoute(
                  builder: (context) => ProjectsScreen(),
                ),

  );

  action.projects= await getProjects(0);

  next(action);

}

/*
navigateToMovesView(Store<AppState> store,NavigateToMoveViewAction action, NextDispatcher next){
 
  Navigator.push(
      action.context,
       MaterialPageRoute(
                  builder: (context) => MovesView(),
                ),

  );


  next(action);

}



navigateToSkillsView(Store<AppState> store,NavigateToSkillViewAction action, NextDispatcher next){
  
  Navigator.push(
      action.context,
       MaterialPageRoute(
                  builder: (context) => SkillsView(),
                ),

  );


  next(action);

}


navigateToEvDefCalculatorView(Store<AppState> store,NavigateToEvDefCalculatorViewAction action, NextDispatcher next){
  
  Navigator.push(
      action.context,
       MaterialPageRoute(
                  builder: (context) => EvDefCalculatorView(pokemons: store.state.homeState.pokemons,),
                ),

  );


  next(action);

}*/
