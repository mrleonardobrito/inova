import 'package:flutter/material.dart';

const userData = {
  "nome": "Emanuel Vilela",
  "descricaoAcademica": "4° ano - 914",
  "descricao":
      "Gosto de programar e fazer aplicativos. Estou cursando o ensino médio no Instituto Federal de Alagoas.",
};

const carouselItems = ["Projetos", "Repertório", "Teste"];

List projectData = [
  {
    "nome": "DadosJusBrasil",
    "orientador": "Daniel Lacert Fireman",
    "descricao":
        'Aplicativo para pipipipopopo pipipipopopo pipipipopopo pipipipopopo',
    "dataTermino": "02/03/2017",
  },
  {
    "nome": "Meta",
    "orientador": "Felipe Alencar",
    "descricao":
        'Estágio em parceria com o Mark Zuckerberg para a produção do Whatsapp 2',
    "dataTermino": "02/03/2022",
  },
  {
    "nome": "Facebook",
    "orientador": "Mark Zuckerberg",
    "descricao":
        'Estágio feito para mudar a foto de perfil do Marquinhos, em que ele não sabia mudar',
    "dataTermino": "Em andamento",
  },
  {
    "nome": "uTorrent Mobile",
    "orientador": "Tarsis Marinho",
    "descricao": 'Aplicativo para piratear arquivos',
    "dataTermino": "31/08/2020",
  },
];

List screenComponentsSize = [
  {"componentName": "header", "size": 0.07},
  {"componentName": "background", "size": 0.13},
  {"componentName": "userData", "size": 0.21},
  {"componentName": "navBar", "size": 0.07},
  {"componentName": "navBarItems", "size": 0.42}
];

const colors = [
  {
    "colorName": "naviGrey",
    "colorValue": Color(0xFFF5F5F5),
  },
  {
    "colorName": "fontGrey",
    "colorValue": Color(0xFFBFBFBF),
  },
  {
    "colorName": "black",
    "colorValue": Color(0xFF000000),
  },
  {
    "colorName": "white",
    "colorValue": Color(0xFFFFFFFF),
  },
  {
    "colorName": "red",
    "colorValue": Colors.red,
  },
  {
    "colorName": "backgroundPurple",
    "colorValue": Color(0xFF4065FC),
  },
  {
    "colorName": "iconPurple",
    "colorValue": Color(0xFF3B64FA),
  },
  {
    "colorName": "lightPurplegrey",
    "colorValue": Color(0xFFE8ECFF),
  }
];

getColor(String colorName) {
  for (int i = 0; i < colors.length; i++) {
    if(colors[i]["colorName"] == colorName){
      return colors[i]["colorValue"];
    }else{
      return Colors.red;
    }
  }
}
