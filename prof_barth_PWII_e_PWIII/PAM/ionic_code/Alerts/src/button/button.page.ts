import { Component, OnInit } from '@angular/core';
import { AlertService } from '../services/alert.service';

@Component({
  selector: 'app-button',
  templateUrl: './button.page.html',
  styleUrls: ['./button.page.scss'],
})
export class ButtonPage implements OnInit {

  constructor(
    private alerts: AlertService
  ){}

  ngOnInit(){
  }

  // metodo que escreve na console 
  // recebe como parametrô uma string
  public escreveConsole(a : string){
    console.log(a);

  }

  public alertaTela(){
    this.alerts.mensagemOk(" ERRO ", " Erro de conexão ", " Sua conexão não foi estabelecida tente novamente mais tarde ", " O botão OK foi clicado " )
  }

}// fechamento da classe buttonPage
