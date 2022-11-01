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

List userScreenComponentsSize = [
  {"componentName": "header", "size": 0.07},
  {"componentName": "background", "size": 0.13},
  {"componentName": "userData", "size": 0.21},
  {"componentName": "navBar", "size": 0.07},
  {"componentName": "navBarItems", "size": 0.42}
];