import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:kanban_studio/redux/actions/notification_screen_actions.dart';
import 'package:kanban_studio/redux/app_state.dart';
import 'package:kanban_studio/redux/service/news_service.dart';


class KanbanStudioNotification extends StatelessWidget {

  final bool accepted;
  final bool viewed;
  final String text;
  final String url;

  const KanbanStudioNotification({required this.accepted,required this.text,required this.viewed,required this.url});

  @override
  Widget build(BuildContext context) {
    return  Card(
           
            child: ListTile(
            
              title:  Text(text),
              trailing: ElevatedButton(
                onPressed: () async  {
                    if(!accepted)
                      StoreProvider.of<AppState>(context)
                          .dispatch(AcceptInvitationAction(url));


                },
                child: !accepted? const Text('Confirmar') : const Text('Aceptada'),
                style: ButtonStyle(
                  backgroundColor:
                      !accepted? MaterialStateProperty.all(const Color(0xFF4267B2)): MaterialStateProperty.all(Color.fromARGB(255, 113, 114, 117)),
                ),
              ),
            ),
          );
  }


}

