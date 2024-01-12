



List<String> toStringList(String body){
      
      List<String> list=[];
      int cont = 0;
      int cont2 = 0;
      int pos =0;

      for(int i=0; i< body.length;i++){

        if(body[i]=="{"){
          if(cont==0)
            pos=i;
          cont++;
        }
        else if(body[i]=="}")
          cont--;
        else if(body[i]==","&&cont==0)
          list.add(body.substring(pos,i).trimRight());
      }


    return list;


}